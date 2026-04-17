'use strict';

/**
 * setting-cron service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::setting-cron.setting-cron');
