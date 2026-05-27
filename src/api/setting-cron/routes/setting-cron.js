'use strict';

/**
 * setting-cron router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::setting-cron.setting-cron');
