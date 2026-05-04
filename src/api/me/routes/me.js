'use strict';

module.exports = {
  routes: [
    {
      method: 'GET',
      path: '/me/purchases',
      handler: 'me.purchases',
      config: { auth: false, policies: [] },
    },
    {
      method: 'GET',
      path: '/me/consumptions',
      handler: 'me.consumptions',
      config: { auth: false, policies: [] },
    },
    {
      method: 'GET',
      path: '/me/webhooks',
      handler: 'me.webhooks',
      config: { auth: false, policies: [] },
    },
    {
      method: 'POST',
      path: '/webhooks/preflight',
      handler: 'me.preflight',
      config: { auth: false, policies: [] },
    },
  ],
};
