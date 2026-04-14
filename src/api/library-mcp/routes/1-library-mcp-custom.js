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
    {
      method: 'POST',
      path: '/library-mcps/:slug/call-tool',
      handler: 'api::library-mcp.library-mcp.callTool',
      config: { policies: [] },
    },
  ],
};