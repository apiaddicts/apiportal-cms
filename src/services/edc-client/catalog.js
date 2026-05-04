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

function extractOffer(dataset) {
  if (!dataset) return null;
  const offers = dataset['odrl:hasPolicy'] || dataset['http://www.w3.org/ns/odrl/2/hasPolicy'] || [];
  const list = Array.isArray(offers) ? offers : [offers];
  return list[0] || null;
}

module.exports = { requestCatalog, findDatasetById, extractOffer };
