'use strict';

/**
 * user-credential controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::user-credential.user-credential', ({ strapi }) => ({

  /**
   * Override create to connect products and apim_config.
   * Expects body: { data: { slug, clientId, clientSecret, user, products, apim_config } }
   */
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

  /**
   * POST /user-credentials/:documentId/add-products
   * Body: { products: [...documentIds], apimConfigDocumentId: '...' }
   * - Resolves library_apis of new products → unique externalServiceIds
   * - Calls integrator to add those services to the Kong consumer
   * - Connects the products to the credential
   */
  async addProducts(ctx) {
    const { documentId } = ctx.params;
    const { products: newProductIds, apimConfigDocumentId: apimConfigDocumentIdParam } = ctx.request.body;

    if (!Array.isArray(newProductIds) || newProductIds.length === 0) {
      return ctx.badRequest('products array is required and must not be empty');
    }

    // Load the credential to get the consumer slug and apim_config if not provided
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

    // Resolve new products → unique service identifiers
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

    // Call integrator to add services to the Kong consumer
    try {
      await strapi.service('api::apim-config.apim-config').addServicesToCredentials(
        apimConfigDocumentId,
        { consumerId, services },
      );
    } catch (err) {
      strapi.log.error(`[addProducts] Integrator error: ${err.message}`);
      return ctx.badRequest('Failed to add services to integrator', { detail: err.message });
    }

    // Connect products to credential
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
}));
