'use strict';

/**
 * apim-config controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::apim-config.apim-config', ({strapi}) => ({
  async findOne(ctx) {
    const {slug} = ctx.params;
    const entity = await strapi.db.query('api::apim-config.apim-config').findOne({
      where: {slug}
    })

    const sanitizedEntity = await this.sanitizeOutput(entity);
    return this.transformResponse(sanitizedEntity);
  }
}));
