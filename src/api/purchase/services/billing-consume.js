'use strict';

const {
  requestCatalog, findDatasetById, extractOffer,
  buildContractRequest, initBillingNegotiation, pollNegotiation,
  buildTransferRequest, initTransfer, pollTransfer,
} = require('../../../services/edc-client');

async function ensureAgreement({ purchase, assetId }) {
  const existing = (purchase.contract_agreements || {})[assetId];
  if (existing) return existing;

  const consumerUrl = process.env.EDC_CONSUMER_MANAGEMENT_URL;
  const consumerKey = process.env.EDC_CONSUMER_API_KEY;
  const providerProtocol = process.env.EDC_PROVIDER_PROTOCOL_URL;

  const catalog = await requestCatalog({
    consumerUrl,
    apiKey: consumerKey,
    providerProtocolUrl: providerProtocol,
  });
  const dataset = findDatasetById(catalog, assetId);
  if (!dataset) throw new Error(`Asset ${assetId} not found in provider catalog`);
  const offer = extractOffer(dataset);
  if (!offer?.['@id']) throw new Error(`No offer for asset ${assetId}`);

  const request = buildContractRequest({
    providerProtocolUrl: providerProtocol,
    offerId: offer['@id'],
    assetId,
    bundleId: purchase.bundleId,
    providerId: purchase.providerId,
  });
  const negotiationId = await initBillingNegotiation({
    consumerUrl,
    apiKey: consumerKey,
    paymentRef: purchase.stripe_payment_intent_id,
    request,
  });
  const { state, contractAgreementId } = await pollNegotiation({
    consumerUrl, apiKey: consumerKey, negotiationId,
  });
  if (state !== 'FINALIZED' || !contractAgreementId) {
    throw new Error(`Negotiation ${negotiationId} ended in ${state} without agreement`);
  }

  const merged = { ...(purchase.contract_agreements || {}), [assetId]: contractAgreementId };
  await strapi.documents('api::purchase.purchase').update({
    documentId: purchase.documentId,
    data: { contract_agreements: merged },
  });
  return contractAgreementId;
}

async function executeTransfer({ contractAgreementId, assetId, webhookUrl, consumptionId }) {
  const consumerUrl = process.env.EDC_CONSUMER_MANAGEMENT_URL;
  const consumerKey = process.env.EDC_CONSUMER_API_KEY;
  const providerProtocol = process.env.EDC_PROVIDER_PROTOCOL_URL;

  const request = buildTransferRequest({
    providerProtocolUrl: providerProtocol,
    contractAgreementId, assetId, webhookUrl,
  });
  const tpId = await initTransfer({ consumerUrl, apiKey: consumerKey, request });
  await strapi.documents('api::consumption.consumption').update({
    documentId: consumptionId,
    data: { edc_transfer_process_id: tpId, status: 'transferring' },
  });
  const { state } = await pollTransfer({ consumerUrl, apiKey: consumerKey, transferProcessId: tpId });
  return { tpId, state };
}

async function consume({ purchaseId, assetId, webhookUrl }) {
  const purchase = await strapi.documents('api::purchase.purchase').findOne({ documentId: purchaseId });
  if (!purchase) throw new Error(`Purchase ${purchaseId} not found`);
  if (purchase.status !== 'paid') throw new Error(`Purchase ${purchaseId} status=${purchase.status}, expected 'paid'`);

  const consumption = await strapi.documents('api::consumption.consumption').create({
    data: { purchase: purchase.documentId, assetId, webhookUrl, status: 'negotiating', started_at: new Date() },
  });

  try {
    const contractAgreementId = await ensureAgreement({ purchase, assetId });
    await strapi.documents('api::consumption.consumption').update({
      documentId: consumption.documentId,
      data: { edc_contract_agreement_id: contractAgreementId },
    });
    const { tpId, state } = await executeTransfer({
      contractAgreementId, assetId, webhookUrl, consumptionId: consumption.documentId,
    });
    const ok = state === 'COMPLETED';
    await strapi.documents('api::consumption.consumption').update({
      documentId: consumption.documentId,
      data: { status: ok ? 'completed' : 'failed', completed_at: new Date(), error: ok ? null : `Transfer ended in ${state}` },
    });
    if (ok) {
      await strapi.documents('api::purchase.purchase').update({
        documentId: purchase.documentId,
        data: { status: 'expired' },
      });
    }
    return { consumptionId: consumption.documentId, transferProcessId: tpId, state };
  } catch (err) {
    await strapi.documents('api::consumption.consumption').update({
      documentId: consumption.documentId,
      data: { status: 'failed', completed_at: new Date(), error: err.message },
    });
    throw err;
  }
}

module.exports = { consume, ensureAgreement };
