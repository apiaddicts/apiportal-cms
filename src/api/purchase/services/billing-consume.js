'use strict';

const {
  requestCatalog, findDatasetById, extractOffer,
  buildContractRequest, initBillingNegotiation, pollNegotiation,
  buildTransferRequest, initTransfer, pollTransfer,
} = require('../../../services/edc-client');

function providerProtocolUrl(providerUrl) {
  if (!providerUrl) {
    throw new Error('Catalog has no providerUrl — republish the catalog from ApiQuality so the script populates it');
  }
  return providerUrl.replace(/\/+$/, '') + '/protocol';
}

function explainEdcError(step, err, { consumerUrl } = {}) {
  if (err.status === 0) {
    return new Error(`${step}: could not connect to ${consumerUrl} (${err.cause?.code || err.cause?.message || 'network error'})`);
  }
  return new Error(`${step} failed: ${err.message}`);
}

async function ensureAgreement({ purchase, assetId, consumerUrl, consumerApiKey, consumerUserId }) {
  const existing = (purchase.contract_agreements || {})[assetId];
  if (existing) return existing;

  const providerProtocol = providerProtocolUrl(purchase.providerUrl);

  let catalog;
  try {
    catalog = await requestCatalog({
      consumerUrl,
      apiKey: consumerApiKey,
      providerProtocolUrl: providerProtocol,
    });
  } catch (err) {
    throw explainEdcError('Catalog request', err, { consumerUrl, providerProtocol });
  }
  const dataset = findDatasetById(catalog, assetId);
  if (!dataset) throw new Error(`Asset ${assetId} not found in provider catalog`);
  const offer = extractOffer(dataset, { bundleId: purchase.bundleId, providerId: purchase.providerId });
  if (!offer?.['@id']) throw new Error(`No offer for asset ${assetId} matching bundle ${purchase.bundleId}`);

  const request = buildContractRequest({
    providerProtocolUrl: providerProtocol,
    offerId: offer['@id'],
    assetId,
    bundleId: purchase.bundleId,
    providerId: purchase.providerId,
  });
  let negotiationId;
  try {
    negotiationId = await initBillingNegotiation({
      consumerUrl,
      apiKey: consumerApiKey,
      paymentRef: purchase.stripe_payment_intent_id,
      consumerUserId,
      request,
    });
  } catch (err) {
    throw explainEdcError('Negotiation init', err, { consumerUrl, providerProtocol });
  }
  const { state, contractAgreementId } = await pollNegotiation({
    consumerUrl, apiKey: consumerApiKey, negotiationId,
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

async function executeTransfer({ purchase, contractAgreementId, assetId, webhookUrl, consumptionId, consumerUrl, consumerApiKey }) {
  const providerProtocol = providerProtocolUrl(purchase.providerUrl);

  const request = buildTransferRequest({
    providerProtocolUrl: providerProtocol,
    contractAgreementId, assetId, webhookUrl,
  });
  const tpId = await initTransfer({ consumerUrl, apiKey: consumerApiKey, request });
  await strapi.documents('api::consumption.consumption').update({
    documentId: consumptionId,
    data: { edc_transfer_process_id: tpId, status: 'transferring' },
  });
  const { state } = await pollTransfer({ consumerUrl, apiKey: consumerApiKey, transferProcessId: tpId });
  return { tpId, state };
}

async function consume({ purchaseId, assetId, webhookUrl, consumerUrl, consumerApiKey, consumerUserId }) {
  if (!consumerUrl) throw new Error('consumerUrl is required');
  if (!consumerUserId) throw new Error('consumerUserId is required');
  const purchase = await strapi.documents('api::purchase.purchase').findOne({ documentId: purchaseId });
  if (!purchase) throw new Error(`Purchase ${purchaseId} not found`);
  if (purchase.status !== 'paid') throw new Error(`Purchase ${purchaseId} status=${purchase.status}, expected 'paid'`);

  const consumption = await strapi.documents('api::consumption.consumption').create({
    data: { purchase: purchase.documentId, assetId, webhookUrl, status: 'negotiating', started_at: new Date() },
  });

  try {
    const contractAgreementId = await ensureAgreement({ purchase, assetId, consumerUrl, consumerApiKey, consumerUserId });
    await strapi.documents('api::consumption.consumption').update({
      documentId: consumption.documentId,
      data: { edc_contract_agreement_id: contractAgreementId },
    });
    const { tpId, state } = await executeTransfer({
      purchase, contractAgreementId, assetId, webhookUrl, consumptionId: consumption.documentId,
      consumerUrl, consumerApiKey,
    });
    const ok = state === 'COMPLETED';
    await strapi.documents('api::consumption.consumption').update({
      documentId: consumption.documentId,
      data: { status: ok ? 'completed' : 'failed', completed_at: new Date(), error: ok ? null : `Transfer ended in ${state}` },
    });
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
