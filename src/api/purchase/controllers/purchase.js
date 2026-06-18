'use strict';

const { createCoreController } = require('@strapi/strapi').factories;
const { startCheckout, cancelPendingPurchase } = require('../services/billing-checkout');
const { consume } = require('../services/billing-consume');

const BILLING_NS = 'https://w3id.org/dataspace-billing/v0.1/ns/';
const SCHEMA_NS = 'https://schema.org/';

function parseFirst(raw) {
  if (!raw) return null;
  try { return typeof raw === 'string' ? JSON.parse(raw) : raw; } catch { return null; }
}

function decodePolicyContractDef(dataset) {
  const policy = dataset?.['odrl:hasPolicy'];
  const first = Array.isArray(policy) ? policy[0] : policy;
  const policyId = first?.['@id'] || '';
  const segment = policyId.split(':')[0];
  if (!segment) return null;
  try { return Buffer.from(segment, 'base64').toString('utf8') || null; }
  catch { return null; }
}

function normalizeConsumerUrl(raw) {
  if (!raw) return null;
  let url = String(raw).trim().replace(/\/+$/, '');
  if (!/\/management\/v\d+$/.test(url)) {
    url = `${url}/management/v3`;
  }
  return url;
}

function projectOwnPurchase(purchase) {
  if (!purchase) return null;
  const consumptions = (purchase.consumptions || []).map((c) => ({
    documentId: c.documentId,
    assetId: c.assetId,
    status: c.status,
    webhookUrl: c.webhookUrl,
    edcContractAgreementId: c.edc_contract_agreement_id,
    edcTransferProcessId: c.edc_transfer_process_id,
    completedAt: c.completed_at,
    error: c.error,
  }));
  const hasCompletedConsumption = consumptions.some((c) => c.status === 'completed');
  const displayStatus = purchase.status === 'paid' && hasCompletedConsumption ? 'consumed' : purchase.status;
  return {
    documentId: purchase.documentId,
    status: displayStatus,
    rawStatus: purchase.status,
    amount: purchase.amount,
    currency: purchase.currency,
    bundleId: purchase.bundleId,
    providerId: purchase.providerId,
    providerUrl: purchase.providerUrl,
    stripePaymentIntentId: purchase.stripe_payment_intent_id,
    consumerUrl: purchase.consumerUrl || null,
    hasConsumerApiKey: Boolean(purchase.consumerApiKey),
    contractAgreements: purchase.contract_agreements || {},
    error: purchase.error || null,
    createdAt: purchase.createdAt,
    updatedAt: purchase.updatedAt,
    library_catalog: purchase.library_catalog
      ? {
          documentId: purchase.library_catalog.documentId,
          slug: purchase.library_catalog.slug,
          title: purchase.library_catalog.title,
          description: purchase.library_catalog.description,
        }
      : null,
    consumptions,
  };
}

module.exports = createCoreController('api::purchase.purchase', ({ strapi }) => ({
  async findOne(ctx) {
    const { id } = ctx.params;
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    const purchase = await strapi.documents('api::purchase.purchase').findOne({
      documentId: id,
      populate: { buyer: true, library_catalog: true, consumptions: true },
    });
    if (!purchase) return ctx.notFound();
    if (!purchase.buyer || purchase.buyer.id !== userId) return ctx.notFound();
    ctx.body = { data: projectOwnPurchase(purchase) };
  },

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
      ctx.status = 500;
      ctx.body = { error: { status: 500, name: 'CheckoutError', message: err.message } };
    }
  },

  async cancel(ctx) {
    const { id } = ctx.params;
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    try {
      const result = await cancelPendingPurchase({ purchaseId: id, userId });
      if (result.forbidden) return ctx.forbidden('this purchase does not belong to the authenticated user');
      if (result.found === false) return ctx.notFound();
      ctx.body = result;
    } catch (err) {
      strapi.log.error('cancel pending purchase failed', err);
      ctx.status = 500;
      ctx.body = { error: { status: 500, name: 'CancelError', message: err.message } };
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
    const normalizedUrl = normalizeConsumerUrl(consumerUrl);
    let consumerHost;
    try {
      consumerHost = new URL(normalizedUrl).host;
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
      data: { consumerUrl: normalizedUrl, consumerApiKey: consumerApiKey || null },
    });
    ctx.body = { consumerUrl: normalizedUrl, hasApiKey: Boolean(consumerApiKey) };
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
      ctx.status = 500;
      ctx.body = { error: { status: 500, name: 'ConsumeError', message: err.message } };
    }
  },

  async assets(ctx) {
    const { id } = ctx.params;
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    const purchase = await strapi.documents('api::purchase.purchase').findOne({
      documentId: id,
      populate: { buyer: true, library_catalog: true },
    });
    if (!purchase) return ctx.notFound();
    if (!purchase.buyer || purchase.buyer.id !== userId) return ctx.notFound();

    const services = parseFirst(purchase.library_catalog?.services);
    const datasets = services?.['dcat:dataset'] ?? services?.dataset;
    const list = Array.isArray(datasets) ? datasets : datasets ? [datasets] : [];
    const filtered = list.filter((d) => {
      const offer = d?.[`${SCHEMA_NS}offers`] || d?.['schema:offers'] || {};
      const offerBundleId = offer[`${BILLING_NS}bundleId`] ?? offer.bundleId;
      if (offerBundleId) return offerBundleId === purchase.bundleId;
      const decoded = decodePolicyContractDef(d);
      return decoded !== null && decoded === purchase.bundleId;
    });
    ctx.body = { assets: filtered };
  },
}));
