'use strict';

const { createCoreController } = require('@strapi/strapi').factories;
const yaml = require('js-yaml');

const parseOpenDoc = (openDoc, format) => {
  if (!openDoc) return null;

  try {
    if (format === 'json') {
      return JSON.parse(openDoc);
    }

    if (format === 'yaml') {
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

      if (data?.openDoc && data?.openDocFormat) {
        parseOpenDoc(data.openDoc, data.openDocFormat);
      }

      const response = await super.create(ctx);
      return response;
    },

    async update(ctx) {
      const { data } = ctx.request.body;

      if (data?.openDoc && data?.openDocFormat) {
        parseOpenDoc(data.openDoc, data.openDocFormat);
      }

      const response = await super.update(ctx);
      return response;
    },

    async findOne(ctx) {
      const response = await super.findOne(ctx);

      const entity = response?.data;
      const attrs = entity?.attributes;

      if (attrs?.openDoc && attrs?.openDocFormat) {
        try {
          attrs.openDocParsed = parseOpenDoc(
            attrs.openDoc,
            attrs.openDocFormat
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
