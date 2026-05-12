'use strict';

const Stripe = require('stripe');

function getStripe() {
  return new Stripe(process.env.STRIPE_SECRET_KEY);
}

async function createCheckoutSession({ amount, currency, productName, metadata, customerEmail, clientReferenceId, successUrl, cancelUrl }) {
  const stripe = getStripe();
  return stripe.checkout.sessions.create({
    mode: 'payment',
    payment_method_types: ['card'],
    line_items: [{
      price_data: {
        currency: (currency || 'EUR').toLowerCase(),
        product_data: { name: productName },
        unit_amount: Math.round(Number(amount)),
      },
      quantity: 1,
    }],
    metadata,
    payment_intent_data: { metadata },
    ...(customerEmail ? { customer_email: customerEmail } : {}),
    ...(clientReferenceId ? { client_reference_id: clientReferenceId } : {}),
    expires_at: Math.floor(Date.now() / 1000) + 30 * 60,
    success_url: successUrl,
    cancel_url: cancelUrl,
  });
}

module.exports = { createCheckoutSession, getStripe };
