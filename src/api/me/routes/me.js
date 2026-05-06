'use strict';

module.exports = {
  routes: [
    {
      method: 'GET',
      path: '/me/purchases',
      handler: 'me.purchases',
      config: { policies: [] },
    },
    {
      method: 'GET',
      path: '/me/consumptions',
      handler: 'me.consumptions',
      config: { policies: [] },
    },
    {
      method: 'GET',
      path: '/me/webhooks',
      handler: 'me.webhooks',
      config: { policies: [] },
    },
    {
      method: 'POST',
      path: '/webhooks/preflight',
      handler: 'me.preflight',
      config: { auth: false, policies: [] },
    },
  ],
};
