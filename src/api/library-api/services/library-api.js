'use strict';

const { createCoreService } = require('@strapi/strapi').factories;
const axios = require('axios');

module.exports = createCoreService('api::library-api.library-api', ({ strapi }) => ({
  async syncFromIntegrator() {

    const configs = await strapi.documents('api::apim-config.apim-config').findMany({
      filters: { active: true },
      populate: ['configurations'],
      status: 'published',
    });

    const integratorUrl = process.env.INTEGRATOR_URL;
    const integratorApiKey = process.env.INTEGRATOR_KONG_API_KEY;

    for (const config of configs) {
      try {
        const dynamicConfig = config.configurations?.[0];
        if (!dynamicConfig) continue;

        const providerId = dynamicConfig.__component.split('.')[1];
        const response = await axios.get(`${integratorUrl}/list-apis`, {
          headers: {
            'x-apimanager-id': providerId,
            'apiKey': integratorApiKey,
          },
        });
        const externalData = response.data;

        const parsed = typeof externalData === 'string' ? JSON.parse(externalData) : externalData;
        const externalApis = Array.isArray(parsed) ? parsed : (parsed.data ?? []);


        for (const api of externalApis) {
          if (!api.slug) continue;

          const { id, documentId, createdAt, updatedAt, publishedAt, ...apiData } = api;

          await strapi.documents('api::library-api.library-api').create({
            data: {
              ...apiData,
              provider: providerId,
            },
            status: 'published',
          });
        }
      } catch (error) {
        strapi.log.error(`Error syncing config "${config.name}": ${error.message}`);
      }
    }
  }
}));