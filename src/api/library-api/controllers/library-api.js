'use strict';

const { createCoreController } = require('@strapi/strapi').factories;
const yaml = require('js-yaml');

const parseOpenDoc = (openDoc, format) => {
  if (!openDoc) return null;

  try {
    if (format === 'api-json') {
      return JSON.parse(openDoc);
    }

    if (format === 'api-yaml') {
      return yaml.load(openDoc);
    }

    return openDoc;
  } catch (err) {
    throw new Error(`Invalid openDoc (${format}): ${err.message}`);
  }
};

module.exports = createCoreController('api::library-api.library-api', ({ strapi }) => ({
    async create(ctx) {
      const { data } = ctx.request.body;

      if (data?.openDoc && data?.openDocSource) {
        parseOpenDoc(data.openDoc, data.openDocSource);
      }

      const response = await super.create(ctx);
      return response;
    },

    async update(ctx) {
      const { data } = ctx.request.body;

      if (data?.openDoc && data?.openDocSource) {
        parseOpenDoc(data.openDoc, data.openDocSource);
      }

      const response = await super.update(ctx);
      return response;
    },

    async findOne(ctx) {
      const response = await super.findOne(ctx);

      const entity = response?.data;
      const attrs = entity?.attributes;

      if (attrs?.openDoc && attrs?.openDocSource) {
        try {
          attrs.openDocParsed = parseOpenDoc(
            attrs.openDoc,
            attrs.openDocSource
          );
        } catch (err) {
          attrs.openDocParsed = null;
          attrs.openDocParseError = err.message;
        }
      }

      return response;
    },
  })
);
