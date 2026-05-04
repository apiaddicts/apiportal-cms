'use strict';

const Stripe = require('stripe');

function getStripe() {
  return new Stripe(process.env.STRIPE_SECRET_KEY);
}

async function createCheckoutSession({ amount, currency, productName, metadata, successUrl, cancelUrl }) {
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
    success_url: successUrl,
    cancel_url: cancelUrl,
  });
}

module.exports = { createCheckoutSession, getStripe };
