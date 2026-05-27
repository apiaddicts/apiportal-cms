'use strict';

const { createCoreController } = require('@strapi/strapi').factories;

function extractServiceId(api) {
  return api.externalServiceId || (api.slug ? api.slug.replace(/^kong-/, '') : null);
}

module.exports = createCoreController('api::product.product', ({ strapi }) => ({

  async update(ctx) {
    const { documentId } = ctx.params;
    const { data } = ctx.request.body ?? {};

    const currentProduct = await strapi.documents('api::product.product').findOne({
      documentId,
      populate: {
        library_apis: true,
        user_credentials: { populate: { products: { populate: ['library_apis'] }, apim_config: true } },
        apim_config: true,
      },
      status: 'published',
    });

    if (!currentProduct) return ctx.notFound('Product not found');

    const disconnectIds = new Set(
      (data?.library_apis?.disconnect ?? []).map(a => a.documentId)
    );

    if (disconnectIds.size > 0 && currentProduct.user_credentials?.length > 0) {
      const removedApis = currentProduct.library_apis.filter(a => disconnectIds.has(a.documentId));

      for (const credential of currentProduct.user_credentials) {
        const otherProducts = credential.products.filter(p => p.documentId !== documentId);
        const otherApiIds = new Set(otherProducts.flatMap(p => (p.library_apis ?? []).map(a => a.documentId)));

        const servicesToRemove = removedApis
          .filter(a => !otherApiIds.has(a.documentId))
          .map(extractServiceId)
          .filter(Boolean);

        if (servicesToRemove.length > 0) {
          const apimConfigDocumentId = credential.apim_config?.documentId;
          if (apimConfigDocumentId) {
            try {
              await strapi.service('api::apim-config.apim-config').removeServicesFromCredentials(
                apimConfigDocumentId,
                { consumerId: credential.slug, services: servicesToRemove }
              );
            } catch (err) {
              strapi.log.error(`[product.update] Failed to remove services from integrator: ${err.message}`);
            }
          }
        }
      }
    }

    const updated = await strapi.documents('api::product.product').update({
      documentId,
      data,
      populate: ['library_apis'],
    });

    await strapi.documents('api::product.product').publish({ documentId });

    return this.transformResponse(updated);
  },

  async removeApi(ctx) {
    const { documentId } = ctx.params;
    const { apiDocumentId } = ctx.request.body;

    if (!apiDocumentId) return ctx.badRequest('apiDocumentId is required');

    const product = await strapi.documents('api::product.product').findOne({
      documentId,
      populate: {
        library_apis: true,
        user_credentials: { populate: { products: { populate: ['library_apis'] }, apim_config: true } },
      },
      status: 'published',
    });

    if (!product) return ctx.notFound('Product not found');

    const apiToRemove = (product.library_apis ?? []).find(a => a.documentId === apiDocumentId);
    if (!apiToRemove) return ctx.badRequest('API not found in this product');

    if (product.user_credentials?.length > 0) {
      for (const credential of product.user_credentials) {
        const otherProducts = credential.products.filter(p => p.documentId !== documentId);
        const otherApiIds = new Set(otherProducts.flatMap(p => (p.library_apis ?? []).map(a => a.documentId)));

        if (!otherApiIds.has(apiDocumentId)) {
          const serviceId = extractServiceId(apiToRemove);
          const apimConfigDocumentId = credential.apim_config?.documentId;
          if (serviceId && apimConfigDocumentId) {
            try {
              await strapi.service('api::apim-config.apim-config').removeServicesFromCredentials(
                apimConfigDocumentId,
                { consumerId: credential.slug, services: [serviceId] }
              );
            } catch (err) {
              strapi.log.error(`[product.removeApi] Integrator error: ${err.message}`);
            }
          }
        }
      }
    }

    await strapi.documents('api::product.product').update({
      documentId,
      data: { library_apis: { disconnect: [{ documentId: apiDocumentId }] } },
    });
    await strapi.documents('api::product.product').publish({ documentId });

    const updated = await strapi.documents('api::product.product').findOne({
      documentId,
      populate: { library_apis: { fields: ['documentId', 'title'] } },
      status: 'published',
    });

    return this.transformResponse(updated);
  },

  async addApi(ctx) {
    const { documentId } = ctx.params;
    const { apiDocumentId } = ctx.request.body;

    if (!apiDocumentId) return ctx.badRequest('apiDocumentId is required');

    const product = await strapi.documents('api::product.product').findOne({
      documentId,
      populate: {
        user_credentials: { populate: { apim_config: true } },
      },
      status: 'published',
    });

    if (!product) return ctx.notFound('Product not found');

    if (product.user_credentials?.length > 0) {
      const api = await strapi.documents('api::library-api.library-api').findOne({
        documentId: apiDocumentId,
        status: 'published',
      });
      const serviceId = api
        ? (api.externalServiceId || (api.slug ? api.slug.replace(/^kong-/, '') : null))
        : null;

      if (serviceId) {
        for (const credential of product.user_credentials) {
          const apimConfigDocumentId = credential.apim_config?.documentId;
          if (apimConfigDocumentId && credential.slug) {
            try {
              await strapi.service('api::apim-config.apim-config').addServicesToCredentials(
                apimConfigDocumentId,
                { consumerId: credential.slug, services: [serviceId] },
              );
            } catch (err) {
              strapi.log.error(`[product.addApi] Integrator error: ${err.message}`);
            }
          }
        }
      }
    }

    await strapi.documents('api::product.product').update({
      documentId,
      data: { library_apis: { connect: [{ documentId: apiDocumentId }] } },
    });
    await strapi.documents('api::product.product').publish({ documentId });

    const updated = await strapi.documents('api::product.product').findOne({
      documentId,
      populate: { library_apis: { fields: ['documentId', 'title'] } },
      status: 'published',
    });

    return this.transformResponse(updated);
  },

  async delete(ctx) {
    const { documentId } = ctx.params;

    const product = await strapi.documents('api::product.product').findOne({
      documentId,
      populate: {
        library_apis: true,
        user_credentials: { populate: { products: { populate: ['library_apis'] }, apim_config: true } },
      },
      status: 'published',
    });

    if (!product) return ctx.notFound('Product not found');

    if (product.user_credentials?.length > 0 && product.library_apis?.length > 0) {
      for (const credential of product.user_credentials) {
        const otherProducts = credential.products.filter(p => p.documentId !== documentId);
        const otherApiIds = new Set(otherProducts.flatMap(p => (p.library_apis ?? []).map(a => a.documentId)));

        const servicesToRemove = product.library_apis
          .filter(a => !otherApiIds.has(a.documentId))
          .map(extractServiceId)
          .filter(Boolean);

        if (servicesToRemove.length > 0) {
          const apimConfigDocumentId = credential.apim_config?.documentId;
          if (apimConfigDocumentId) {
            try {
              await strapi.service('api::apim-config.apim-config').removeServicesFromCredentials(
                apimConfigDocumentId,
                { consumerId: credential.slug, services: servicesToRemove }
              );
            } catch (err) {
              strapi.log.error(`[product.delete] Failed to remove services from integrator: ${err.message}`);
            }
          }
        }
      }
    }

    await strapi.documents('api::product.product').delete({ documentId });

    return { data: { documentId } };
  },
}));
