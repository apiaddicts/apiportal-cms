'use strict';

/**
 * user-credential controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::user-credential.user-credential', ({ strapi }) => ({

  async create(ctx) {
    const { data } = ctx.request.body;
    const { products, apim_config, ...rest } = data ?? {};

    const connectProducts = Array.isArray(products) && products.length > 0
      ? { connect: products.map(docId => ({ documentId: docId })) }
      : undefined;

    const connectApimConfig = apim_config?.connect
      ? apim_config
      : apim_config
        ? { connect: [{ documentId: apim_config }] }
        : undefined;

    const created = await strapi.documents('api::user-credential.user-credential').create({
      data: {
        ...rest,
        ...(connectProducts ? { products: connectProducts } : {}),
        ...(connectApimConfig ? { apim_config: connectApimConfig } : {}),
      },
    });

    await strapi.documents('api::user-credential.user-credential').publish({
      documentId: created.documentId,
    });

    return this.transformResponse(created);
  },

  async addProducts(ctx) {
    const { documentId } = ctx.params;
    const { products: newProductIds, apimConfigDocumentId: apimConfigDocumentIdParam } = ctx.request.body;

    if (!Array.isArray(newProductIds) || newProductIds.length === 0) {
      return ctx.badRequest('products array is required and must not be empty');
    }

    const credential = await strapi.documents('api::user-credential.user-credential').findOne({
      documentId,
      populate: ['products', 'apim_config'],
      status: 'published',
    });

    if (!credential) {
      return ctx.notFound('Credential not found');
    }

    const apimConfigDocumentId = apimConfigDocumentIdParam ?? credential.apim_config?.documentId;

    if (!apimConfigDocumentId) {
      return ctx.badRequest('apimConfigDocumentId is required and could not be resolved');
    }

    const consumerId = credential.slug;

    const serviceIdSet = new Set();
    for (const productDocumentId of newProductIds) {
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

    if (serviceIdSet.size === 0) {
      return ctx.badRequest('No services found for the selected products');
    }

    const services = [...serviceIdSet];

    try {
      await strapi.service('api::apim-config.apim-config').addServicesToCredentials(
        apimConfigDocumentId,
        { consumerId, services },
      );
    } catch (err) {
      strapi.log.error(`[addProducts] Integrator error: ${err.message}`);
      return ctx.badRequest('Failed to add services to integrator', { detail: err.message });
    }

    await strapi.documents('api::user-credential.user-credential').update({
      documentId,
      data: {
        products: {
          connect: newProductIds.map(docId => ({ documentId: docId })),
        },
      },
    });

    await strapi.documents('api::user-credential.user-credential').publish({ documentId });

    const updated = await strapi.documents('api::user-credential.user-credential').findOne({
      documentId,
      populate: ['products'],
      status: 'published',
    });

    return this.transformResponse(updated);
  },

  async removeProducts(ctx) {
    const { documentId } = ctx.params;
    const { products: productIdsToRemove, apimConfigDocumentId: apimConfigDocumentIdParam } = ctx.request.body;

    if (!Array.isArray(productIdsToRemove) || productIdsToRemove.length === 0) {
      return ctx.badRequest('products array is required and must not be empty');
    }

    const credential = await strapi.documents('api::user-credential.user-credential').findOne({
      documentId,
      populate: { products: { populate: ['library_apis'] }, apim_config: true },
      status: 'published',
    });

    if (!credential) return ctx.notFound('Credential not found');

    const apimConfigDocumentId = apimConfigDocumentIdParam ?? credential.apim_config?.documentId;
    if (!apimConfigDocumentId) return ctx.badRequest('apimConfigDocumentId could not be resolved');

    const removeSet = new Set(productIdsToRemove);
    const removedProducts = credential.products.filter(p => removeSet.has(p.documentId));
    const remainingProducts = credential.products.filter(p => !removeSet.has(p.documentId));

    const remainingApiIds = new Set(remainingProducts.flatMap(p => (p.library_apis ?? []).map(a => a.documentId)));

    const removedApis = removedProducts.flatMap(p => p.library_apis ?? []);
    const servicesToRemove = [...new Set(
      removedApis
        .filter(a => !remainingApiIds.has(a.documentId))
        .map(a => a.externalServiceId || (a.slug ? a.slug.replace(/^kong-/, '') : null))
        .filter(Boolean)
    )];

    if (servicesToRemove.length > 0) {
      try {
        await strapi.service('api::apim-config.apim-config').removeServicesFromCredentials(
          apimConfigDocumentId,
          { consumerId: credential.slug, services: servicesToRemove }
        );
      } catch (err) {
        strapi.log.error(`[removeProducts] Integrator error: ${err.message}`);
        return ctx.badRequest('Failed to remove services from integrator', { detail: err.message });
      }
    }

    await strapi.documents('api::user-credential.user-credential').update({
      documentId,
      data: { products: { disconnect: productIdsToRemove.map(id => ({ documentId: id })) } },
    });
    await strapi.documents('api::user-credential.user-credential').publish({ documentId });

    const updated = await strapi.documents('api::user-credential.user-credential').findOne({
      documentId,
      populate: ['products'],
      status: 'published',
    });

    return this.transformResponse(updated);
  },

  async delete(ctx) {
    const { documentId } = ctx.params;

    const credential = await strapi.documents('api::user-credential.user-credential').findOne({
      documentId,
      populate: { products: { populate: ['library_apis'] }, apim_config: true },
      status: 'published',
    });

    if (!credential) return ctx.notFound('Credential not found');

    const apimConfigDocumentId = credential.apim_config?.documentId;

    if (apimConfigDocumentId && credential.slug) {
      try {
        await strapi.service('api::apim-config.apim-config').deleteCredentialFromIntegrator(
          apimConfigDocumentId,
          { consumerId: credential.slug }
        );
      } catch (err) {
        strapi.log.error(`[credential.delete] Integrator error: ${err.message}`);
      }
    }

    await strapi.documents('api::user-credential.user-credential').delete({ documentId });

    return { data: { documentId } };
  },
}));
