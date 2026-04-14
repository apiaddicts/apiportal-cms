'use strict';

module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/library-mcps/:slug/connect',
      handler: 'api::library-mcp.library-mcp.connect',
      config: {
        auth: false,
        policies: [],
      },
    },
  ],
};