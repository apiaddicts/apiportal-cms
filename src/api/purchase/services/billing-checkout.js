'use strict';

const { createCheckoutSession } = require('../../../services/stripe-client');
const { resolveConsumerId } = require('./consumer-id');

function extractBillingMetaFromCatalog(catalog) {
  if (!catalog) throw new Error('catalog is null');
  const parseFirst = (raw) => {
    if (!raw) return null;
    try { return typeof raw === 'string' ? JSON.parse(raw) : raw; } catch { return null; }
  };
  const cdOps = parseFirst(catalog.contractDefinitionOperations);
  const assets = parseFirst(catalog.assets);
  const policyId = cdOps?.policyId || cdOps?.contractPolicyId || cdOps?.id || null;
  const assetEntries = Array.isArray(assets)
    ? assets
    : Array.isArray(assets?.assets)
      ? assets.assets
      : assets
        ? [assets]
        : [];
  const firstAsset = assetEntries[0] || {};
  const offers = firstAsset['schema:offers'] || firstAsset.properties?.['schema:offers'] || {};
  const bundleId = offers['https://w3id.org/dataspace-billing/v0.1/ns/bundleId']
    || offers.bundleId
    || cdOps?.bundleId
    || `${catalog.slug}-bundle`;
  const providerId = offers['https://w3id.org/dataspace-billing/v0.1/ns/providerId']
    || offers.providerId
    || cdOps?.providerId;
  const amountStr = offers['schema:price'] || offers.price;
  const amount = amountStr ? Math.round(Number(amountStr) * 100) : null; // EUR cents for Stripe
  const currency = offers['schema:priceCurrency'] || offers.priceCurrency || 'EUR';
  return { policyId, bundleId, providerId, amount, currency, productName: catalog.title || catalog.slug };
}

async function startCheckout({ catalogId, ctx, userId }) {
  const catalog = await strapi.documents('api::library-catalog.library-catalog').findOne({ documentId: catalogId });
  if (!catalog) throw new Error(`Catalog ${catalogId} not found`);

  const meta = extractBillingMetaFromCatalog(catalog);
  if (!meta.amount || !meta.policyId || !meta.bundleId || !meta.providerId) {
    throw new Error('Catalog is missing billing fields (price/policyId/bundleId/providerId)');
  }

  const consumerId = resolveConsumerId(ctx);

  const purchase = await strapi.documents('api::purchase.purchase').create({
    data: {
      library_catalog: catalog.documentId,
      buyer: userId,
      consumerId,
      amount: meta.amount,
      currency: meta.currency,
      bundleId: meta.bundleId,
      providerId: meta.providerId,
      policyId: meta.policyId,
      status: 'pending',
    },
  });

  const portalBase = process.env.PORTAL_BASE_URL || 'http://localhost:5173';
  const session = await createCheckoutSession({
    amount: meta.amount,
    currency: meta.currency,
    productName: meta.productName,
    metadata: {
      purchaseId: purchase.documentId,
      consumerId,
      bundleId: meta.bundleId,
      providerId: meta.providerId,
    },
    successUrl: `${portalBase}/checkout/${purchase.documentId}/success?session_id={CHECKOUT_SESSION_ID}`,
    cancelUrl: `${portalBase}/checkout/${purchase.documentId}/cancel`,
  });

  await strapi.documents('api::purchase.purchase').update({
    documentId: purchase.documentId,
    data: { stripe_session_id: session.id },
  });

  return { purchaseId: purchase.documentId, checkoutUrl: session.url };
}

module.exports = { startCheckout };
