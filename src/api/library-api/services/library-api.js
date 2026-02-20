'use strict';

const { createCoreService } = require('@strapi/strapi').factories;
const axios = require('axios');

module.exports = createCoreService('api::library-api.library-api', ({ strapi }) => ({
  async syncFromIntegrator() {
    const configs = await strapi.db.query('api::apim-config.apim-config').findMany({
      where: { active: true }
    });

    const integratorUrl = process.env.INTEGRATOR_URL;
    const integratorApiKey = process.env.INTEGRATOR_KONG_API_KEY;

    for (const config of configs) {
      try {
        const response = await axios.get(`${integratorUrl}/list-apis`, {
          headers: {
            'x-apimanager-id': config.provider,
            'apiKey': integratorApiKey
          }
        });

        const externalApis = response.data;

        for (const api of externalApis) {
          const existing = await strapi.db.query('api::library-api.library-api').findOne({
            where: { slug: api.slug }
          });

          const data = {
            ...api,
            provider: config.provider,
            publishedAt: new Date(),
          };

          if (existing) {
            await strapi.db.query('api::library-api.library-api').update({
              where: { id: existing.id },
              data
            });
          } else {
            await strapi.db.query('api::library-api.library-api').create({
              data
            });
          }
        }
      } catch (error) {
        strapi.log.error(`Error ${config.provider}: ${error.message}`);
      }
    }
  }
}));