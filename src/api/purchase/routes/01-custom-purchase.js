'use strict';

module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/purchases/checkout',
      handler: 'purchase.checkout',
      config: { policies: [] },
    },
    {
      method: 'POST',
      path: '/purchases/:id/connector',
      handler: 'purchase.setConnector',
      config: { policies: [] },
    },
    {
      method: 'POST',
      path: '/purchases/:id/consume',
      handler: 'purchase.consume',
      config: { policies: [] },
    },
    {
      method: 'GET',
      path: '/purchases/:id/assets',
      handler: 'purchase.assets',
      config: { auth: false, policies: [] },
    },
  ],
};
