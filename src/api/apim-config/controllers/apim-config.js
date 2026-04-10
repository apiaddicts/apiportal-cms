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
}));
