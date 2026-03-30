'use strict';

/**
 * library-mcp controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::library-mcp.library-mcp', ({ strapi }) => ({
  async connect(ctx) {
    const { slug } = ctx.params;
    const { transport, token, command, args, url } = ctx.request.body || {};

    const result = await strapi
      .service('api::library-mcp.library-mcp')
      .connectMcp(slug, { transport, token, command, args, url });

    ctx.body = result;
  },
}));
