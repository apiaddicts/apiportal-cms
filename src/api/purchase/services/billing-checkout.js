'use strict';

const { createCheckoutSession, getStripe } = require('../../../services/stripe-client');

const BILLING_NS = 'https://w3id.org/dataspace-billing/v0.1/ns/';
const SCHEMA_NS = 'https://schema.org/';

function parseFirst(raw) {
  if (!raw) return null;
  try { return typeof raw === 'string' ? JSON.parse(raw) : raw; } catch { return null; }
}

function pickOfferFromServices(services, assetIds) {
  const datasets = services?.['dcat:dataset'] ?? services?.dataset;
  const list = Array.isArray(datasets) ? datasets : datasets ? [datasets] : [];
  const wanted = Array.isArray(assetIds) ? assetIds : assetIds ? [assetIds] : null;
  const match = wanted ? list.find(d => wanted.includes(d?.['@id'])) : null;
  const dataset = match || list.find(d => d?.[`${SCHEMA_NS}offers`] || d?.['schema:offers']) || null;
  return dataset?.[`${SCHEMA_NS}offers`] || dataset?.['schema:offers'] || null;
}

function offerField(offer, compact, full) {
  return offer?.[compact] ?? offer?.[full];
}

function extractBillingMetaFromCatalog(catalog) {
  if (!catalog) throw new Error('catalog is null');

  const cdOps = parseFirst(catalog.contractDefinitionOperations);
  const policyId = cdOps?.contractPolicyId || cdOps?.policyId || cdOps?.['@id'] || null;
  const assetIds = cdOps?.assetsSelector?.operandRight ?? cdOps?.assetsSelector?.['operandRight'];

  const services = parseFirst(catalog.services);
  const offer = pickOfferFromServices(services, assetIds) || {};

  const price = offerField(offer, 'schema:price', `${SCHEMA_NS}price`);
  const currency = offerField(offer, 'schema:priceCurrency', `${SCHEMA_NS}priceCurrency`) || 'EUR';
  const bundleId = offer[`${BILLING_NS}bundleId`] ?? offer.bundleId ?? null;
  const providerId = offer[`${BILLING_NS}providerId`] ?? offer.providerId ?? null;

  const amount = price ? Math.round(Number(price) * 100) : null;

  return {
    policyId,
    bundleId,
    providerId,
    amount,
    currency,
    productName: catalog.title || catalog.slug,
  };
}

async function reuseOrCancelPending({ userId, catalogDocumentId }) {
  const pendings = await strapi.documents('api::purchase.purchase').findMany({
    filters: {
      buyer: { id: userId },
      library_catalog: { documentId: catalogDocumentId },
      status: 'pending',
    },
    sort: { createdAt: 'desc' },
  });
  const list = Array.isArray(pendings) ? pendings : [];
  if (list.length === 0) return null;

  const stripe = getStripe();
  let reusable = null;
  for (const p of list) {
    if (!p.stripe_session_id) continue;
    if (reusable) break;
    try {
      const session = await stripe.checkout.sessions.retrieve(p.stripe_session_id);
      if (session.status === 'open' && session.url) {
        reusable = { purchaseId: p.documentId, checkoutUrl: session.url };
        continue;
      }
      await strapi.documents('api::purchase.purchase').update({
        documentId: p.documentId,
        data: { status: 'failed', error: `Stripe session ${session.status}` },
      });
    } catch (err) {
      strapi.log.warn(`could not retrieve stripe session ${p.stripe_session_id}: ${err.message}`);
    }
  }
  return reusable;
}

async function startCheckout({ catalogId, ctx, userId }) {
  const catalog = await strapi.documents('api::library-catalog.library-catalog').findOne({ documentId: catalogId });
  if (!catalog) throw new Error(`Catalog ${catalogId} not found`);

  const meta = extractBillingMetaFromCatalog(catalog);
  const isFree = !meta.amount || meta.amount <= 0;
  if (!isFree && (!meta.policyId || !meta.bundleId || !meta.providerId)) {
    throw new Error('Catalog is missing contract fields (policyId/bundleId/providerId)');
  }

  const consumerId = String(userId);
  const portalBase = 'https://portal.opendataspace.io';

  if (isFree) {
    const purchase = await strapi.documents('api::purchase.purchase').create({
      data: {
        library_catalog: catalog.documentId,
        buyer: userId,
        consumerId,
        amount: 0,
        currency: meta.currency,
        bundleId: meta.bundleId,
        providerId: meta.providerId,
        providerUrl: catalog.providerUrl || null,
        policyId: meta.policyId,
        status: 'paid',
      },
    });
    return {
      purchaseId: purchase.documentId,
      checkoutUrl: `${portalBase}/developer/purchases/${purchase.documentId}`,
      free: true,
    };
  }

  const reused = await reuseOrCancelPending({ userId, catalogDocumentId: catalog.documentId });
  if (reused) return reused;

  const buyerEmail = ctx.state.user?.email;

  const purchase = await strapi.documents('api::purchase.purchase').create({
    data: {
      library_catalog: catalog.documentId,
      buyer: userId,
      consumerId,
      amount: meta.amount,
      currency: meta.currency,
      bundleId: meta.bundleId,
      providerId: meta.providerId,
      providerUrl: catalog.providerUrl || null,
      policyId: meta.policyId,
      status: 'pending',
    },
  });

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
    customerEmail: buyerEmail,
    clientReferenceId: String(userId),
    successUrl: `${portalBase}/developer/purchases/${purchase.documentId}`,
    cancelUrl: `${portalBase}/developer/checkout/${purchase.documentId}/cancel`,
  });

  await strapi.documents('api::purchase.purchase').update({
    documentId: purchase.documentId,
    data: { stripe_session_id: session.id },
  });

  return { purchaseId: purchase.documentId, checkoutUrl: session.url };
}

async function cancelPendingPurchase({ purchaseId, userId }) {
  const purchase = await strapi.documents('api::purchase.purchase').findOne({
    documentId: purchaseId,
    populate: ['buyer'],
  });
  if (!purchase) return { found: false };
  if (!purchase.buyer || purchase.buyer.id !== userId) return { forbidden: true };
  if (purchase.status !== 'pending') return { skipped: true, status: purchase.status };

  let reason = 'cancelled by user';

  if (purchase.stripe_session_id) {
    try {
      const stripe = getStripe();
      const session = await stripe.checkout.sessions.retrieve(purchase.stripe_session_id);
      if (session.status === 'complete' && session.payment_status === 'paid') {
        return { skipped: true, status: 'awaiting-webhook' };
      }
      if (session.status === 'open') {
        try { await stripe.checkout.sessions.expire(purchase.stripe_session_id); } catch (e) {
          strapi.log.warn(`could not expire stripe session ${purchase.stripe_session_id}: ${e.message}`);
        }
        reason = 'cancelled by user (session expired)';
      } else {
        reason = `cancelled by user (stripe session ${session.status})`;
      }
    } catch (err) {
      strapi.log.warn(`could not retrieve stripe session ${purchase.stripe_session_id}: ${err.message}`);
    }
  }

  await strapi.documents('api::purchase.purchase').update({
    documentId: purchaseId,
    data: { status: 'failed', error: reason },
  });
  return { cancelled: true };
}

module.exports = { startCheckout, cancelPendingPurchase };
