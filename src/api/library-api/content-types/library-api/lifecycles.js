'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

const yaml = require('js-yaml');
const utils = require('@strapi/utils');
const { ApplicationError } = utils.errors;

module.exports = {
  async beforeCreate(event) {
    await smartFormatConverter(event);
    await validateAsyncApiVersion(event);
  },

  async beforeUpdate(event) {
    await smartFormatConverter(event);
    await validateAsyncApiVersion(event);
  },
};

async function smartFormatConverter(event) {
  const { data } = event.params;
  if (!data || !data.openDoc) return;

  const input = data.openDoc.trim();

  try {
    if (data.openDocFormat === 'json') {
      try {
        const obj = JSON.parse(input);
        data.openDoc = JSON.stringify(obj, null, 2);
      } catch (error) {
        const objFromYaml = yaml.load(input);
        if (typeof objFromYaml === 'object') {
          data.openDoc = JSON.stringify(objFromYaml, null, 2);
        }
      }
    } else if (data.openDocFormat === 'yaml') {
      const obj = yaml.load(input);
      data.openDoc = yaml.dump(obj, {
        indent: 2,
        lineWidth: -1
      });
    }
  } catch (err) {
    if (err instanceof ApplicationError) {
      throw err;
    }

    throw new ApplicationError('The content is not a valid JSON or YAML.');
  }
}

async function validateAsyncApiVersion(event) {
  const { data } = event.params;

  if (data?.openDocType !== 'asyncapi') return;
  if (!data?.openDoc) return;

  let parsed;

  try {
    if (data.openDocFormat === 'json') {
      parsed = JSON.parse(data.openDoc);
    } else if (data.openDocFormat === 'yaml') {
      parsed = yaml.load(data.openDoc);
    }
  } catch (err) {
    throw new ApplicationError('Invalid AsyncAPI document format.');
  }

  if (!parsed?.asyncapi) {
    throw new ApplicationError(
      'Invalid AsyncAPI document: missing "asyncapi" field.'
    );
  }

  const version = String(parsed.asyncapi);

  if (!isAsyncApiVersionSupported(version)) {
    throw new ApplicationError(
      `Unsupported AsyncAPI version "${version}". Supported versions are from AsyncAPI 2.x up to 3.0.0.`
    );
  }
}

function isAsyncApiVersionSupported(version) {
  if (!version) return false;

  if (version.startsWith('2.')) return true;

  if (version === '3.0.0') return true;

  return false;
}