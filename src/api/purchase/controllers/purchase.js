'use strict';

const { createCoreController } = require('@strapi/strapi').factories;
const { startCheckout } = require('../services/billing-checkout');
const { consume } = require('../services/billing-consume');
const { requestCatalog, findDatasetById } = require('../../../services/edc-client');

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
    const { assetId, webhookUrl } = ctx.request.body || {};
    if (!assetId || !webhookUrl) return ctx.badRequest('assetId and webhookUrl are required');
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
    try {
      const result = await consume({ purchaseId: id, assetId, webhookUrl });
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

    try {
      const catalog = await requestCatalog({
        consumerUrl: process.env.EDC_CONSUMER_MANAGEMENT_URL,
        apiKey: process.env.EDC_CONSUMER_API_KEY,
        providerProtocolUrl: process.env.EDC_PROVIDER_PROTOCOL_URL,
      });
      const datasets = catalog?.['dcat:dataset'] || [];
      const list = Array.isArray(datasets) ? datasets : [datasets];
      const filtered = list.filter((d) => {
        const props = d.properties || d;
        const offerBundleId = props['schema:offers']?.['https://w3id.org/dataspace-billing/v0.1/ns/bundleId']
          || props['https://w3id.org/dataspace-billing/v0.1/ns/bundleId'];
        return offerBundleId === purchase.bundleId;
      });
      ctx.body = { assets: filtered };
    } catch (err) {
      strapi.log.error('list assets failed', err);
      ctx.throw(500, err.message);
    }
  },
}));
