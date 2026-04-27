'use strict';

module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/gaia-x/validate',
      handler: 'gaia-x.validate',
      config: {
        auth: false,
        policies: [],
      },
    },
  ],
};
