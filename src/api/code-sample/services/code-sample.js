'use strict';

/**
 * code-sample service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::code-sample.code-sample');
