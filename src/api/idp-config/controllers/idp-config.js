'use strict';

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::idp-config.idp-config', ({ strapi }) => ({
  async findOne(ctx) {
    const { slug } = ctx.params;

    const entity = await strapi.db
      .query('api::idp-config.idp-config')
      .findOne({
        where: { slug },
        active: true
      });

    const sanitizedEntity = await this.sanitizeOutput(entity);
    return this.transformResponse(sanitizedEntity);
  }
}));