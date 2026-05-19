'use strict';

const { edcFetch } = require('./http');

const TERMINAL_STATES = new Set(['COMPLETED', 'TERMINATED', 'DEPROVISIONED']);

function buildTransferRequest({ providerProtocolUrl, contractAgreementId, assetId, webhookUrl, sourceHints = {} }) {
  const dataDestination = {
    type: 'HttpData',
    baseUrl: webhookUrl,
    method: 'POST',
  };
  if (sourceHints.pathSegments) dataDestination.sourcePathSegments = String(sourceHints.pathSegments);
  if (sourceHints.queryParams) dataDestination.sourceQueryParams = String(sourceHints.queryParams);
  if (sourceHints.body !== undefined && sourceHints.body !== null && sourceHints.body !== '') {
    dataDestination.sourceBody = typeof sourceHints.body === 'string'
      ? sourceHints.body
      : JSON.stringify(sourceHints.body);
    dataDestination.sourceMediaType = sourceHints.contentType || sourceHints.mediaType || 'application/json';
  }
  return {
    '@context': { '@vocab': 'https://w3id.org/edc/v0.0.1/ns/' },
    '@type': 'TransferRequest',
    counterPartyAddress: providerProtocolUrl,
    contractId: contractAgreementId,
    assetId,
    protocol: 'dataspace-protocol-http',
    transferType: 'HttpData-PUSH',
    dataDestination,
  };
}

async function initTransfer({ consumerUrl, apiKey, request }) {
  const res = await edcFetch(`${consumerUrl}/transferprocesses`, { method: 'POST', apiKey, body: request });
  return res['@id'];
}

async function pollTransfer({ consumerUrl, apiKey, transferProcessId, intervalMs = 1000, timeoutMs = 60000 }) {
  const start = Date.now();
  while (Date.now() - start < timeoutMs) {
    const res = await edcFetch(`${consumerUrl}/transferprocesses/${encodeURIComponent(transferProcessId)}`, { apiKey });
    const state = res.state || res['edc:state'];
    if (TERMINAL_STATES.has(state)) {
      return { state, raw: res };
    }
    await new Promise((r) => setTimeout(r, intervalMs));
  }
  throw new Error(`Transfer ${transferProcessId} did not terminate within ${timeoutMs}ms`);
}

module.exports = { buildTransferRequest, initTransfer, pollTransfer };
