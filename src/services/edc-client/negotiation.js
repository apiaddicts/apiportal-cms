'use strict';

const { edcFetch } = require('./http');
const { BILLING_NS } = require('./policy');

const TERMINAL_STATES = new Set(['FINALIZED', 'TERMINATED']);

function buildContractRequest({ providerProtocolUrl, offerId, assetId, bundleId, billingProviderId, assignerId }) {
  return {
    '@context': {
      '@vocab': 'https://w3id.org/edc/v0.0.1/ns/',
      odrl: 'http://www.w3.org/ns/odrl/2/',
    },
    '@type': 'ContractRequest',
    counterPartyAddress: providerProtocolUrl,
    protocol: 'dataspace-protocol-http',
    policy: {
      '@context': 'http://www.w3.org/ns/odrl.jsonld',
      '@type': 'Offer',
      '@id': offerId,
      assigner: assignerId,
      target: assetId,
      permission: [{
        action: 'use',
        constraint: [{
          and: [
            { leftOperand: `${BILLING_NS}purchased`, operator: 'eq', rightOperand: bundleId },
            { leftOperand: `${BILLING_NS}providerId`, operator: 'eq', rightOperand: billingProviderId },
          ],
        }],
      }],
      prohibition: [],
      obligation: [],
    },
  };
}

async function initBillingNegotiation({ consumerUrl, apiKey, paymentRef, consumerUserId, request }) {
  if (!paymentRef) throw new Error('paymentRef is required');
  if (!consumerUserId) throw new Error('consumerUserId is required');
  const url = consumerUrl.replace(/\/$/, '').replace(/\/v3$/, '') + '/v3/billing/contractnegotiations';
  const res = await edcFetch(url, {
    method: 'POST',
    apiKey,
    body: request,
    headers: { 'X-Payment-Ref': paymentRef, 'X-Consumer-User-Id': consumerUserId },
  });
  return res['@id'];
}

async function pollNegotiation({ consumerUrl, apiKey, negotiationId, intervalMs = 1000, timeoutMs = 60000 }) {
  const start = Date.now();
  while (Date.now() - start < timeoutMs) {
    const res = await edcFetch(`${consumerUrl}/contractnegotiations/${encodeURIComponent(negotiationId)}`, { apiKey });
    const state = res.state || res['edc:state'];
    if (TERMINAL_STATES.has(state)) {
      const caid = res.contractAgreementId || res['edc:contractAgreementId'];
      return { state, contractAgreementId: caid, raw: res };
    }
    await new Promise((r) => setTimeout(r, intervalMs));
  }
  throw new Error(`Negotiation ${negotiationId} did not finalize within ${timeoutMs}ms`);
}

module.exports = { buildContractRequest, initBillingNegotiation, pollNegotiation };
