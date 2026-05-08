'use strict';

module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/stripe/webhook',
      handler: 'stripe-webhook-event.handle',
      config: { auth: false, policies: [] },
    },
  ],
};
