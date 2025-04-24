'use strict';

/**
 * apim-config service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::apim-config.apim-config');
