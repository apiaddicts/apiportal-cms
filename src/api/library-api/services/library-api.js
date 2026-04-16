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

        const response = await axios.get(`${integratorUrl}/list-apis`, {
          headers: {
            'x-apimanager-id': config.slug,
            'apiKey': integratorApiKey,
          },
        });
        const externalData = response.data;

        const parsed = typeof externalData === 'string' ? JSON.parse(externalData) : externalData;
        const externalApis = Array.isArray(parsed) ? parsed : parsed.data ?? [];

        for (const api of externalApis) {
          try {
            if (!api.slug) continue;

            const { id, documentId, createdAt, updatedAt, publishedAt, ...apiData } = api;
            const existing = await strapi.documents('api::library-api.library-api').findMany({ filters: { slug: apiData.slug } });

            if (existing.length > 0) {
              await strapi.documents('api::library-api.library-api').update({
                documentId: existing[0].documentId,
                data: { ...apiData },
                status: 'published',
              });
            } else {
              await strapi.documents('api::library-api.library-api').create({
                data: { ...apiData },
                status: 'published',
              });
            }
          } catch (apiError) {
            strapi.log.error(`Error syncing "${api.slug}": ${apiError.message}`);
            continue;
          }
        }
      } catch (error) {
        strapi.log.error(`Error syncing config "${config.name}": ${error.message}`);
      }
    }
  },
}));