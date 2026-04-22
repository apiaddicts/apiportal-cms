'use strict';

/**
 * apim-config controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::apim-config.apim-config', ({ strapi }) => ({
  async findOne(ctx) {
    const { slug } = ctx.params;
    const entity = await strapi.db.query('api::apim-config.apim-config').findOne({
      where: { slug }
    })

    if (!entity) {
      return ctx.notFound('Configuration not found');
    }

    const sanitizedEntity = await this.sanitizeOutput(entity);
    return this.transformResponse(sanitizedEntity);
  },
  async sync(ctx) {
    const token = ctx.request.headers['authorization']?.replace('Bearer ', '');
    if (!token) return ctx.unauthorized();

    try {
      const { checkSecretIsDefined, getTokenOptions } = strapi.service('admin::token');
      checkSecretIsDefined();
      const options = getTokenOptions();

      const jwt = require('jsonwebtoken');
      const decoded = jwt.verify(token, strapi.config.get('admin.auth.secret'), options);

      if (!decoded) return ctx.unauthorized();
    } catch (e) {
      strapi.log.error('Token verification failed:', e.message);
      return ctx.unauthorized();
    }

    const { id } = ctx.params;
    try {
      const result = await strapi
        .service('api::apim-config.apim-config')
        .syncFromIntegrator(id);

      return ctx.send({
        message: 'Sync completed successfully',
        data: result
      });
    } catch (error) {
      strapi.log.error(`Controller Sync Error: ${error.message}`);
      return ctx.badRequest('Sync failed', { detail: error.message });
    }
  },
  async generateCredentials(ctx) {
    const { id } = ctx.params;
    const { credId, services } = ctx.request.body;

    if (!credId) {
      return ctx.badRequest('credId is required');
    }
    if (!Array.isArray(services) || services.length === 0) {
      return ctx.badRequest('services array is required and must not be empty');
    }

    try {
      const result = await strapi
        .service('api::apim-config.apim-config')
        .generateCredentialsFromIntegrator(id, { credId, services });

      return ctx.send({
        message: 'Credentials generated successfully',
        data: result,
      });
    } catch (error) {
      strapi.log.error(`Generate credentials error: ${error.message}`);
      return ctx.badRequest('Failed to generate credentials', {
        detail: error.message,
      });
    }
  },
  async addServices(ctx) {
    const { id } = ctx.params;
    const { consumerId, services } = ctx.request.body;

    if (!consumerId) {
      return ctx.badRequest('consumerId is required');
    }
    if (!Array.isArray(services) || services.length === 0) {
      return ctx.badRequest('services array is required and must not be empty');
    }

    try {
      const result = await strapi
        .service('api::apim-config.apim-config')
        .addServicesToCredentials(id, { consumerId, services });

      return ctx.send({
        message: 'Services added successfully',
        data: result,
      });
    } catch (error) {
      strapi.log.error(`Add services error: ${error.message}`);
      return ctx.badRequest('Failed to add services', {
        detail: error.message,
      });
    }
  }
}));
