'use strict';

/**
 * apim-config service
 */

const { createCoreService } = require('@strapi/strapi').factories;
const axios = require('axios');

module.exports = createCoreService('api::apim-config.apim-config', ({ strapi }) => ({
  async syncFromIntegrator(documentId = null) {
    let configs = [];

    if (documentId) {
      const single = await strapi.documents('api::apim-config.apim-config').findOne({
        documentId,
        populate: ['configurations'],
        status: 'published',
      });
      if (single) configs.push(single);
    } else {
      configs = await strapi.documents('api::apim-config.apim-config').findMany({
        filters: { active: true },
        populate: ['configurations'],
        status: 'published',
      });
    }

    const results = { updated: 0, created: 0, errors: [], configsProcessed: 0 };

    for (const config of configs) {
      try {
        const syncResult = await this.processSingleSync(config);
        results.updated += syncResult.updated;
        results.created += syncResult.created;
        results.configsProcessed++;
      } catch (err) {
        strapi.log.error(`Error syncing config "${config.name || config.slug}": ${err.message}`);
        results.errors.push(config.slug || 'unknown');
      }
    }

    return results;
  },

  async processSingleSync(config) {
    const integratorUrl = process.env.INTEGRATOR_URL;
    const integratorApiKey = process.env.INTEGRATOR_KONG_API_KEY;
    const dynamicConfig = config.configurations?.at(0);

    if (!dynamicConfig) throw new Error('No dynamic configuration defined');

    const response = await axios.get(`${integratorUrl}/list-apis`, {
      headers: {
        'x-apimanager-id': config.slug,
        'apiKey': integratorApiKey,
      },
    });

    const externalData = response.data;
    const parsed = typeof externalData === 'string' ? JSON.parse(externalData) : externalData;
    const externalApis = Array.isArray(parsed) ? parsed : (parsed.data ?? []);

    let localUpdate = 0;
    let localCreate = 0;

    for (const api of externalApis) {
      if (!api.slug) continue;

      const { id, documentId: _, createdAt, updatedAt, publishedAt, ...apiData } = api;

      const existing = await strapi.documents('api::library-api.library-api').findMany({
        filters: { slug: apiData.slug }
      });

      if (existing.length > 0) {
        await strapi.documents('api::library-api.library-api').update({
          documentId: existing.at(0).documentId,
          data: apiData,
          status: 'published',
        });
        localUpdate++;
      } else {
        await strapi.documents('api::library-api.library-api').create({
          data: apiData,
          status: 'published',
        });
        localCreate++;
      }
    }

    return { updated: localUpdate, created: localCreate };
  }
}));