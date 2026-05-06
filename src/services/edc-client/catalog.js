'use strict';

const { edcFetch } = require('./http');

async function requestCatalog({ consumerUrl, apiKey, providerProtocolUrl }) {
  const body = {
    '@context': { '@vocab': 'https://w3id.org/edc/v0.0.1/ns/' },
    '@type': 'CatalogRequest',
    counterPartyAddress: providerProtocolUrl,
    protocol: 'dataspace-protocol-http',
  };
  return edcFetch(`${consumerUrl}/catalog/request`, { method: 'POST', apiKey, body });
}

function findDatasetById(catalog, assetId) {
  const datasets = catalog?.['dcat:dataset'] || catalog?.['http://www.w3.org/ns/dcat#dataset'] || [];
  const list = Array.isArray(datasets) ? datasets : [datasets];
  return list.find((d) => d['@id'] === assetId);
}

const BILLING_NS = 'https://w3id.org/dataspace-billing/v0.1/ns/';

function constraintOperand(c) {
  const lo = c?.['odrl:leftOperand'] || c?.leftOperand;
  return typeof lo === 'object' ? (lo?.['@id'] || lo?.id) : lo;
}
function constraintValue(c) {
  return c?.['odrl:rightOperand'] ?? c?.rightOperand;
}
function flattenConstraints(constraint) {
  if (!constraint) return [];
  const list = Array.isArray(constraint) ? constraint : [constraint];
  const out = [];
  for (const c of list) {
    const grouped = c?.['odrl:and'] || c?.and || c?.['odrl:or'] || c?.or;
    if (Array.isArray(grouped)) out.push(...grouped);
    else out.push(c);
  }
  return out;
}
function offerMatches(offer, { bundleId, providerId } = {}) {
  if (!bundleId && !providerId) return true;
  const perm = offer?.['odrl:permission'] || offer?.permission;
  const perms = Array.isArray(perm) ? perm : [perm];
  return perms.some((p) => {
    const constraints = flattenConstraints(p?.['odrl:constraint'] || p?.constraint);
    const get = (key) => constraints.find((c) => constraintOperand(c) === `${BILLING_NS}${key}`);
    if (bundleId && constraintValue(get('purchased')) !== bundleId) return false;
    if (providerId && constraintValue(get('providerId')) !== providerId) return false;
    return true;
  });
}

function extractOffer(dataset, filter = {}) {
  if (!dataset) return null;
  const offers = dataset['odrl:hasPolicy'] || dataset['http://www.w3.org/ns/odrl/2/hasPolicy'] || [];
  const list = Array.isArray(offers) ? offers : [offers];
  return list.find((o) => offerMatches(o, filter)) || list[0] || null;
}

function extractProviderParticipantId(catalog) {
  return catalog?.['dspace:participantId']
    ?? catalog?.['participantId']
    ?? catalog?.['https://w3id.org/dspace/v0.8/participantId']
    ?? null;
}

module.exports = { requestCatalog, findDatasetById, extractOffer, extractProviderParticipantId };
