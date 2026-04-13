const { errors } = require('@strapi/utils');
const { ApplicationError } = errors;

module.exports = {
  async beforeCreate(event) {
    const { data } = event.params;

    const exists = await strapi.documents('api::setting-cron.setting-cron').findFirst({
      filters: { type: data.type },
      status: 'published'
    });

    if (exists) {
      throw new ApplicationError("This cron type is already configured. Please edit the existing record.");
    }
  },
};