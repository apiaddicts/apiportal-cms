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

    const createdSlugs = new Set();
    const updatedSlugs = new Set();
    const errors = [];
    let configsProcessed = 0;

    for (const config of configs) {
      try {
        const syncResult = await this.processSingleSync(config);
        syncResult.createdSlugs.forEach(s => {
          createdSlugs.add(s);
          updatedSlugs.delete(s);
        });
        syncResult.updatedSlugs.forEach(s => {
          if (!createdSlugs.has(s)) updatedSlugs.add(s);
        });
        configsProcessed++;
      } catch (err) {
        strapi.log.error(`Error syncing config "${config.name || config.slug}": ${err.message}`);
        errors.push(config.slug || 'unknown');
      }
    }

    return {
      created: createdSlugs.size,
      updated: updatedSlugs.size,
      errors,
      configsProcessed,
    };
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

    const apisBySlug = new Map();
    for (const api of externalApis) {
      if (api.slug) apisBySlug.set(api.slug, api);
    }

    const localCreated = new Set();
    const localUpdated = new Set();

    for (const api of apisBySlug.values()) {
      const { id, documentId, createdAt, updatedAt, publishedAt, ...apiData } = api;

      const existing = await strapi.documents('api::library-api.library-api').findMany({
        filters: { slug: apiData.slug },
        status: 'published',
      });

      if (existing.length > 0) {
        const { documentId: existingDocId } = existing.at(0);
        await strapi.documents('api::library-api.library-api').update({
          documentId: existingDocId,
          data: apiData,
        });
        await strapi.documents('api::library-api.library-api').publish({
          documentId: existingDocId,
        });
        localUpdated.add(apiData.slug);
      } else {
        const created = await strapi.documents('api::library-api.library-api').create({
          data: apiData,
        });
        await strapi.documents('api::library-api.library-api').publish({
          documentId: created.documentId,
        });
        localCreated.add(apiData.slug);
      }
    }

    return { createdSlugs: localCreated, updatedSlugs: localUpdated };
  }
}));