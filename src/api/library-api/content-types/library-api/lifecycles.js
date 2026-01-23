'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

'use strict';

const yaml = require('js-yaml');
const utils = require('@strapi/utils');
const { ApplicationError } = utils.errors;

module.exports = {
  async beforeCreate(event) {
    await smartFormatConverter(event);
  },

  async beforeUpdate(event) {
    await smartFormatConverter(event);
  },
};

async function smartFormatConverter(event) {
  const { data } = event.params;
  if (!data || !data.openDoc) return;

  const input = data.openDoc.trim();

  try {
    if (data.openDocSource === 'api-json') {
      try {
        const obj = JSON.parse(input);
        data.openDoc = JSON.stringify(obj, null, 2);
      } catch (error) {
        const objFromYaml = yaml.load(input);
        if (typeof objFromYaml === 'object') {
          data.openDoc = JSON.stringify(objFromYaml, null, 2);
        } else {
          throw new TypeError();
        }
      }
    } else if (data.openDocSource === 'api-yaml') {
      const obj = yaml.load(input);
      data.openDoc = yaml.dump(obj, {
        indent: 2,
        lineWidth: -1
      });
    }
  } catch (e) {
    throw new ApplicationError('The content is not a valid JSON or YAML.');
  }
}