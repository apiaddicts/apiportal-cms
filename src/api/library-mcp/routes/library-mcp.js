'use strict';

/**
 * library-mcp router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

const coreRouter = createCoreRouter('api::library-mcp.library-mcp');

const customRouter = (innerRouter, extraRoutes = []) => {
  return {
    get prefix() {
      return innerRouter.prefix;
    },
    get routes() {
      return [...extraRoutes, ...innerRouter.routes];
    },
  };
};

const extraRoutes = [
  {
    method: 'POST',
    path: '/library-mcps/:slug/connect',
    handler: 'api::library-mcp.library-mcp.connect',
    config: {
      auth: false,
    },
  },
];

module.exports = customRouter(coreRouter, extraRoutes);