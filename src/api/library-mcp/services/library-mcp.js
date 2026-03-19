'use strict';

/**
 * library-mcp service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::library-mcp.library-mcp');
