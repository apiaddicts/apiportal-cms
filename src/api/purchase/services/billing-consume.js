'use strict';

const {
  requestCatalog, findDatasetById, extractOffer, extractProviderParticipantId,
  buildContractRequest, initBillingNegotiation, initStandardNegotiation, pollNegotiation,
  buildTransferRequest, initTransfer, pollTransfer,
  normalizeManagementBase,
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

async function ensureAgreement({ purchase, assetId, consumerUrl, consumerApiKey, consumerUserId, forceRenegotiate = false }) {
  const existing = (purchase.contract_agreements || {})[assetId];
  if (existing && !forceRenegotiate) return existing;

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
  const isFree = !purchase.stripe_payment_intent_id;
  const offerFilter = isFree ? {} : { bundleId: purchase.bundleId, providerId: purchase.providerId };
  const offer = extractOffer(dataset, offerFilter);
  if (!offer?.['@id']) throw new Error(`No offer for asset ${assetId}${isFree ? '' : ` matching bundle ${purchase.bundleId}`}`);

  const assignerId = extractProviderParticipantId(catalog);
  if (!assignerId) throw new Error('Provider connector did not advertise a participantId in the DSP catalog');

  const request = buildContractRequest({
    providerProtocolUrl: providerProtocol,
    offer,
    assetId,
    assignerId,
  });
  let negotiationId;
  try {
    negotiationId = isFree
      ? await initStandardNegotiation({ consumerUrl, apiKey: consumerApiKey, request })
      : await initBillingNegotiation({
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

function isStaleAgreementError(err) {
  if (!err) return false;
  if (err.status !== 400 && err.status !== 404) return false;
  const body = typeof err.body === 'string' ? err.body : JSON.stringify(err.body || '');
  return /not found/i.test(body) || /not found/i.test(err.message || '');
}

async function clearAgreement({ purchase, assetId }) {
  const next = { ...(purchase.contract_agreements || {}) };
  delete next[assetId];
  await strapi.documents('api::purchase.purchase').update({
    documentId: purchase.documentId,
    data: { contract_agreements: next },
  });
  purchase.contract_agreements = next;
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
  consumerUrl = normalizeManagementBase(consumerUrl);
  const purchase = await strapi.documents('api::purchase.purchase').findOne({ documentId: purchaseId });
  if (!purchase) throw new Error(`Purchase ${purchaseId} not found`);
  if (purchase.status !== 'paid') throw new Error(`Purchase ${purchaseId} status=${purchase.status}, expected 'paid'`);

  const consumption = await strapi.documents('api::consumption.consumption').create({
    data: { purchase: purchase.documentId, assetId, webhookUrl, status: 'negotiating', started_at: new Date() },
  });

  try {
    let contractAgreementId = await ensureAgreement({ purchase, assetId, consumerUrl, consumerApiKey, consumerUserId });
    await strapi.documents('api::consumption.consumption').update({
      documentId: consumption.documentId,
      data: { edc_contract_agreement_id: contractAgreementId },
    });
    let tpId, state;
    try {
      ({ tpId, state } = await executeTransfer({
        purchase, contractAgreementId, assetId, webhookUrl, consumptionId: consumption.documentId,
        consumerUrl, consumerApiKey,
      }));
    } catch (err) {
      if (!isStaleAgreementError(err)) throw err;
      strapi.log.warn(`[consume] agreement ${contractAgreementId} stale, renegotiating`);
      await clearAgreement({ purchase, assetId });
      contractAgreementId = await ensureAgreement({
        purchase, assetId, consumerUrl, consumerApiKey, consumerUserId, forceRenegotiate: true,
      });
      await strapi.documents('api::consumption.consumption').update({
        documentId: consumption.documentId,
        data: { edc_contract_agreement_id: contractAgreementId },
      });
      ({ tpId, state } = await executeTransfer({
        purchase, contractAgreementId, assetId, webhookUrl, consumptionId: consumption.documentId,
        consumerUrl, consumerApiKey,
      }));
    }
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
