'use strict';

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::stripe-webhook-event.stripe-webhook-event');
