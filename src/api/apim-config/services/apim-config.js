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
      apiData.apim_config = { connect: [{ documentId: config.documentId }] };

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
  },

  async generateCredentialsFromIntegrator(documentId, payload) {
    const integratorUrl = process.env.INTEGRATOR_URL;
    const integratorApiKey = process.env.INTEGRATOR_KONG_API_KEY;

    const config = await strapi.documents('api::apim-config.apim-config').findOne({
      documentId,
      populate: ['configurations'],
      status: 'published',
    });

    if (!config) throw new Error('Config not found');

    const { credId, products, type } = payload;

    const serviceIdSet = new Set();
    for (const productDocumentId of products) {
      const product = await strapi.documents('api::product.product').findOne({
        documentId: productDocumentId,
        populate: ['library_apis'],
        status: 'published',
      });
      if (product?.library_apis) {
        for (const api of product.library_apis) {
          const serviceId = api.externalServiceId
            || (api.slug ? api.slug.replace(/^kong-/, '') : null);
          if (serviceId) serviceIdSet.add(serviceId);
        }
      }
    }

    const services = [...serviceIdSet];

    if (services.length === 0) {
      throw new Error('No services found for the selected products');
    }

    const response = await axios.post(
      `${integratorUrl}/generate-credentials`,
      { credId, services, type: type || 'apiKey' },
      {
        headers: {
          'x-apimanager-id': config.slug,
          'apiKey': integratorApiKey,
        },
      }
    );

    return response.data;
  },

  async addServicesToCredentials(documentId, payload) {
    const integratorUrl = process.env.INTEGRATOR_URL;
    const integratorApiKey = process.env.INTEGRATOR_KONG_API_KEY;

    const config = await strapi.documents('api::apim-config.apim-config').findOne({
      documentId,
      populate: ['configurations'],
      status: 'published',
    });

    if (!config) throw new Error('Config not found');

    const response = await axios.post(
      `${integratorUrl}/add-services`,
      payload,
      {
        headers: {
          'x-apimanager-id': config.slug,
          'apiKey': integratorApiKey,
        },
      }
    );

    return response.data;
  }
}));