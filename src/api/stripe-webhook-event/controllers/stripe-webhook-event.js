'use strict';

const { createCoreController } = require('@strapi/strapi').factories;
const { constructEvent } = require('../../../services/stripe-client');
const { onStripePaid } = require('../../purchase/services/billing-paid');

const FAILED_SESSION_EVENTS = new Set([
  'checkout.session.expired',
  'checkout.session.async_payment_failed',
]);

async function markPurchaseFailedFromSession(session, reason) {
  const purchaseId = session?.metadata?.purchaseId;
  if (!purchaseId) return false;
  const purchase = await strapi.documents('api::purchase.purchase').findOne({
    documentId: purchaseId,
  });
  if (!purchase || purchase.status !== 'pending') return false;
  await strapi.documents('api::purchase.purchase').update({
    documentId: purchaseId,
    data: { status: 'failed', error: reason },
  });
  return true;
}

async function findOrCreateEventLog({ event }) {
  const existing = await strapi.documents('api::stripe-webhook-event.stripe-webhook-event').findFirst({
    filters: { event_id: event.id },
  });
  if (existing) return { existing: true, doc: existing };
  const doc = await strapi.documents('api::stripe-webhook-event.stripe-webhook-event').create({
    data: {
      event_id: event.id,
      event_type: event.type,
      payload: event,
      received_at: new Date(),
      result: 'ignored',
    },
  });
  return { existing: false, doc };
}

async function markProcessed(docId, ok, error = null) {
  await strapi.documents('api::stripe-webhook-event.stripe-webhook-event').update({
    documentId: docId,
    data: { processed_at: new Date(), result: ok ? 'processed' : 'failed', error },
  });
}

module.exports = createCoreController('api::stripe-webhook-event.stripe-webhook-event', ({ strapi }) => ({
  async handle(ctx) {
    const signature = ctx.request.headers['stripe-signature'];
    const rawBody = ctx.request.body?.[Symbol.for('unparsedBody')] || ctx.request.body;
    let event;
    try {
      event = constructEvent({ rawBody, signatureHeader: signature });
    } catch (err) {
      strapi.log.warn(`stripe webhook signature failed: ${err.message}`);
      return ctx.unauthorized('signature verification failed');
    }

    const { existing, doc } = await findOrCreateEventLog({ event });
    if (existing) {
      ctx.body = { received: true, idempotent: true };
      return;
    }

    if (FAILED_SESSION_EVENTS.has(event.type)) {
      try {
        const updated = await markPurchaseFailedFromSession(event.data.object, event.type);
        await markProcessed(doc.documentId, true);
        ctx.body = { received: true, processed: updated };
        return;
      } catch (err) {
        strapi.log.error('stripe webhook failed to mark purchase failed', err);
        await markProcessed(doc.documentId, false, err.message);
        ctx.throw(500, err.message);
      }
    }

    if (event.type !== 'checkout.session.completed') {
      await markProcessed(doc.documentId, true);
      ctx.body = { received: true, ignored: true };
      return;
    }

    try {
      const session = event.data.object;
      const purchaseId = session.metadata?.purchaseId;
      const paymentIntentId = typeof session.payment_intent === 'string'
        ? session.payment_intent
        : session.payment_intent?.id;
      if (!purchaseId || !paymentIntentId) {
        throw new Error('checkout.session.completed missing purchaseId or payment_intent');
      }
      await onStripePaid({ purchaseId, paymentIntentId });
      await markProcessed(doc.documentId, true);
      ctx.body = { received: true, processed: true };
    } catch (err) {
      strapi.log.error('stripe webhook processing failed', err);
      await markProcessed(doc.documentId, false, err.message);
      ctx.throw(500, err.message);
    }
  },
}));
