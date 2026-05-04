'use strict';

async function onStripePaid({ purchaseId, paymentIntentId }) {
  const purchase = await strapi.documents('api::purchase.purchase').findOne({ documentId: purchaseId });
  if (!purchase) throw new Error(`Purchase ${purchaseId} not found`);

  await strapi.documents('api::purchase.purchase').update({
    documentId: purchaseId,
    data: {
      stripe_payment_intent_id: paymentIntentId,
      status: 'paid',
    },
  });
}

module.exports = { onStripePaid };
