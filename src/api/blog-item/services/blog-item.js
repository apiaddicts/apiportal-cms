const { createCoreService } = require('@strapi/strapi').factories;
module.exports = createCoreService('api::blog-item.blog_items')