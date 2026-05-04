'use strict';

const { resolveConsumerId } = require('../../purchase/services/consumer-id');

async function preflightWebhook(url, timeoutMs = 3000) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  const start = Date.now();
  try {
    let res;
    try {
      res = await fetch(url, { method: 'HEAD', signal: controller.signal });
    } catch (e) {
      res = await fetch(url, { method: 'OPTIONS', signal: controller.signal });
    }
    const latencyMs = Date.now() - start;
    return { ok: res.ok, statusCode: res.status, latencyMs };
  } catch (err) {
    return { ok: false, statusCode: 0, latencyMs: Date.now() - start, error: err.message };
  } finally {
    clearTimeout(timer);
  }
}

module.exports = {
  async purchases(ctx) {
    const consumerId = resolveConsumerId(ctx);
    const items = await strapi.documents('api::purchase.purchase').findMany({
      filters: { consumerId },
      populate: ['library_catalog'],
      sort: { createdAt: 'desc' },
    });
    ctx.body = { data: items };
  },

  async consumptions(ctx) {
    const consumerId = resolveConsumerId(ctx);
    const items = await strapi.documents('api::consumption.consumption').findMany({
      filters: { purchase: { consumerId } },
      populate: ['purchase'],
      sort: { createdAt: 'desc' },
    });
    ctx.body = { data: items };
  },

  async webhooks(ctx) {
    const consumerId = resolveConsumerId(ctx);
    const items = await strapi.documents('api::consumption.consumption').findMany({
      filters: { purchase: { consumerId } },
      populate: [],
      sort: { createdAt: 'desc' },
    });
    const seen = new Set();
    const unique = [];
    for (const c of items) {
      if (c.webhookUrl && !seen.has(c.webhookUrl)) {
        seen.add(c.webhookUrl);
        unique.push(c.webhookUrl);
        if (unique.length >= 5) break;
      }
    }
    ctx.body = { data: unique };
  },

  async preflight(ctx) {
    const { url } = ctx.request.body || {};
    if (!url || !/^https?:\/\//.test(url)) return ctx.badRequest('valid http(s) url required');
    const result = await preflightWebhook(url);
    ctx.body = result;
  },
};
