'use strict';

const { getStripe } = require('./checkout');

function constructEvent({ rawBody, signatureHeader }) {
  const stripe = getStripe();
  const secret = process.env.STRIPE_WEBHOOK_SECRET;
  return stripe.webhooks.constructEvent(rawBody, signatureHeader, secret);
}

module.exports = { constructEvent };
