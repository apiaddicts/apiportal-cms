'use strict';

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

function pickDisplayStatus(rawStatus, consumptions) {
  const hasCompletedConsumption = (consumptions || []).some((c) => c.status === 'completed');
  if (rawStatus === 'paid' && hasCompletedConsumption) return 'consumed';
  return rawStatus;
}

function dedupeLatestByCatalog(purchases) {
  const latestByCatalog = new Map();
  for (const purchase of purchases) {
    const catalogId = purchase.library_catalog?.documentId;
    if (!catalogId) continue;
    const existing = latestByCatalog.get(catalogId);
    if (!existing || new Date(purchase.updatedAt) > new Date(existing.updatedAt)) {
      latestByCatalog.set(catalogId, purchase);
    }
  }
  return Array.from(latestByCatalog.values());
}

function projectPurchase(purchase) {
  return {
    documentId: purchase.documentId,
    status: pickDisplayStatus(purchase.status, purchase.consumptions),
    updatedAt: purchase.updatedAt,
    consumerUrl: purchase.consumerUrl || null,
    hasConsumerApiKey: Boolean(purchase.consumerApiKey),
    library_catalog: purchase.library_catalog
      ? {
          documentId: purchase.library_catalog.documentId,
          slug: purchase.library_catalog.slug,
          title: purchase.library_catalog.title,
          description: purchase.library_catalog.description,
        }
      : null,
  };
}

module.exports = {
  async purchases(ctx) {
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    const items = await strapi.documents('api::purchase.purchase').findMany({
      filters: {
        buyer: { id: userId },
        status: { $ne: 'pending' },
      },
      populate: { library_catalog: true, consumptions: true },
      sort: { updatedAt: 'desc' },
    });
    const latest = dedupeLatestByCatalog(items);
    ctx.body = { data: latest.map(projectPurchase) };
  },

  async consumptions(ctx) {
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    const items = await strapi.documents('api::consumption.consumption').findMany({
      filters: { purchase: { buyer: { id: userId } } },
      populate: ['purchase'],
      sort: { createdAt: 'desc' },
    });
    ctx.body = { data: items };
  },

  async webhooks(ctx) {
    const userId = ctx.state.user?.id;
    if (!userId) return ctx.unauthorized('authenticated user required');
    const items = await strapi.documents('api::consumption.consumption').findMany({
      filters: { purchase: { buyer: { id: userId } } },
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
