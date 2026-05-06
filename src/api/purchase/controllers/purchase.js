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

  async setConnector(ctx) {
    const { id } = ctx.params;
    const { consumerUrl, consumerApiKey } = ctx.request.body || {};
    if (!consumerUrl) return ctx.badRequest('consumerUrl is required');
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
    let consumerHost;
    try {
      consumerHost = new URL(consumerUrl).host;
    } catch {
      return ctx.badRequest('consumerUrl must be a valid URL');
    }
    if (purchase.providerUrl) {
      try {
        const providerHost = new URL(purchase.providerUrl).host;
        if (consumerHost === providerHost) {
          return ctx.badRequest(`Consumer URL host (${consumerHost}) matches the provider host. Use your own consumer connector URL.`);
        }
      } catch {
        // providerUrl invalid — non-blocking for setting consumer creds
      }
    }
    await strapi.documents('api::purchase.purchase').update({
      documentId: id,
      data: { consumerUrl, consumerApiKey: consumerApiKey || null },
    });
    ctx.body = { consumerUrl, hasApiKey: Boolean(consumerApiKey) };
  },

  async consume(ctx) {
    const { id } = ctx.params;
    const { assetId, webhookUrl } = ctx.request.body || {};
    if (!assetId || !webhookUrl) {
      return ctx.badRequest('assetId and webhookUrl are required');
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
    if (!purchase.consumerUrl) {
      ctx.status = 412;
      ctx.body = { error: 'consumer connector not configured for this purchase. POST /purchases/:id/connector first.' };
      return;
    }
    try {
      const result = await consume({
        purchaseId: id,
        assetId,
        webhookUrl,
        consumerUrl: purchase.consumerUrl,
        consumerApiKey: purchase.consumerApiKey,
        consumerUserId: String(userId),
      });
      ctx.body = result;
    } catch (err) {
      strapi.log.error('consume failed', err);
      ctx.throw(500, err.message);
    }
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
