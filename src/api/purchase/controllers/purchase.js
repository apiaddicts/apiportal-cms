'use strict';

const { createCoreController } = require('@strapi/strapi').factories;
const { startCheckout } = require('../services/billing-checkout');
const { consume } = require('../services/billing-consume');

const BILLING_NS = 'https://w3id.org/dataspace-billing/v0.1/ns/';
const SCHEMA_NS = 'https://schema.org/';

function parseFirst(raw) {
  if (!raw) return null;
  try { return typeof raw === 'string' ? JSON.parse(raw) : raw; } catch { return null; }
}

module.exports = createCoreController('api::purchase.purchase', ({ strapi }) => ({
  async checkout(ctx) {
    const { catalogId } = ctx.request.body || {};
    if (!catalogId) return ctx.badRequest('catalogId is required');
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    try {
      const result = await startCheckout({ catalogId, ctx, userId });
      ctx.body = result;
    } catch (err) {
      strapi.log.error('checkout failed', err);
      ctx.throw(500, err.message);
    }
  },

  async consume(ctx) {
    const { id } = ctx.params;
    const { assetId, webhookUrl, consumerUrl, consumerApiKey } = ctx.request.body || {};
    if (!assetId || !webhookUrl || !consumerUrl) {
      return ctx.badRequest('assetId, webhookUrl and consumerUrl are required');
    }
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    const purchase = await strapi.documents('api::purchase.purchase').findOne({
      documentId: id,
      populate: ['buyer'],
    });
    if (!purchase) return ctx.notFound();
    if (!purchase.buyer || purchase.buyer.id !== userId) {
      return ctx.forbidden('this purchase does not belong to the authenticated user');
    }
    if (purchase.providerUrl) {
      try {
        const c = new URL(consumerUrl);
        const p = new URL(purchase.providerUrl);
        if (c.host === p.host) {
          return ctx.badRequest(`Consumer URL host (${c.host}) matches the provider host. Use your own consumer connector URL, not the provider's.`);
        }
      } catch {
        return ctx.badRequest('consumerUrl must be a valid URL');
      }
    }
    try {
      const result = await consume({ purchaseId: id, assetId, webhookUrl, consumerUrl, consumerApiKey });
      ctx.body = result;
    } catch (err) {
      strapi.log.error('consume failed', err);
      ctx.throw(500, err.message);
    }
  },

  async billingCheck(ctx) {
    const { paymentRef, bundleId, providerId, consumerId } = ctx.query || {};
    if (!paymentRef) {
      ctx.status = 400;
      ctx.body = { error: 'paymentRef is required' };
      return;
    }
    const filters = { stripe_payment_intent_id: paymentRef, status: 'paid' };
    if (bundleId) filters.bundleId = bundleId;
    if (providerId) filters.providerId = providerId;
    const matches = await strapi.documents('api::purchase.purchase').findMany({
      filters,
      limit: 1,
    });
    const purchase = Array.isArray(matches) ? matches[0] : matches;
    if (!purchase) {
      ctx.status = 404;
      ctx.body = { valid: false, reason: 'no matching purchase' };
      return;
    }
    if (consumerId && purchase.consumerId && purchase.consumerId !== consumerId) {
      ctx.status = 404;
      ctx.body = { valid: false, reason: 'consumerId mismatch' };
      return;
    }
    ctx.body = {
      valid: true,
      paymentRef: purchase.stripe_payment_intent_id,
      bundleId: purchase.bundleId,
      providerId: purchase.providerId,
      consumerId: purchase.consumerId || null,
    };
  },

  async assets(ctx) {
    const { id } = ctx.params;
    const purchase = await strapi.documents('api::purchase.purchase').findOne({
      documentId: id,
      populate: ['library_catalog'],
    });
    if (!purchase) return ctx.notFound();

    const services = parseFirst(purchase.library_catalog?.services);
    const datasets = services?.['dcat:dataset'] ?? services?.dataset;
    const list = Array.isArray(datasets) ? datasets : datasets ? [datasets] : [];
    const filtered = list.filter((d) => {
      const offer = d?.[`${SCHEMA_NS}offers`] || d?.['schema:offers'] || {};
      const offerBundleId = offer[`${BILLING_NS}bundleId`] ?? offer.bundleId;
      return offerBundleId === purchase.bundleId;
    });
    ctx.body = { assets: filtered };
  },
}));
