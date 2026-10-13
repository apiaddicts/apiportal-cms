'use strict';

const utils = require('@strapi/utils');
const { hasSupportedInterfaces } = require('../../utils/agent-card');
const { ApplicationError } = utils.errors;

module.exports = {
  async beforeCreate(event) {
    validateAgentCard(event, true);
  },

  async beforeUpdate(event) {
    validateAgentCard(event, false);
  },
};

function validateAgentCard(event, isCreate) {
  const { data } = event.params;
  if (!data || data.agentCard === undefined) return;

  let card = data.agentCard;
  if (typeof card === 'string') {
    try {
      card = JSON.parse(card);
    } catch (err) {
      throw new ApplicationError('Agent card is not valid JSON.');
    }
    data.agentCard = card;
  }

  if (!card || typeof card !== 'object' || Array.isArray(card)) {
    throw new ApplicationError('Agent card must be a JSON object.');
  }

  validateInterfaces(card);
  validateRequiredFields(card);

  fillIfEmpty(data, 'title', card.name, isCreate);
  fillIfEmpty(data, 'description', card.description, isCreate);
  fillIfEmpty(data, 'version', card.version, isCreate);
  fillIfEmpty(data, 'slug', slugify(data.title), isCreate);
}

function validateInterfaces(card) {
  if (hasSupportedInterfaces(card)) {
    const withoutUrl = card.supportedInterfaces.findIndex((item) => !isNonEmptyString(item?.url));
    if (withoutUrl !== -1) {
      throw new ApplicationError(`Invalid agent card: supportedInterfaces[${withoutUrl}] must have a "url".`);
    }
    return;
  }

  if (isNonEmptyString(card.url)) return;

  throw new ApplicationError('Invalid agent card: it must declare "supportedInterfaces" (A2A 1.0) or "url" (A2A 0.3).');
}

function validateRequiredFields(card) {
  ['name', 'description', 'version'].forEach((field) => {
    if (!isNonEmptyString(card[field])) {
      throw new ApplicationError(`Invalid agent card: missing "${field}".`);
    }
  });

  if (!Array.isArray(card.skills)) {
    throw new ApplicationError('Invalid agent card: "skills" must be an array.');
  }

  card.skills.forEach((skill, index) => {
    if (!isNonEmptyString(skill?.id) || !isNonEmptyString(skill?.name)) {
      throw new ApplicationError(`Invalid agent card: skills[${index}] must have an "id" and a "name".`);
    }
  });
}

function fillIfEmpty(data, key, value, isCreate) {
  if (!value) return;
  if (isCreate ? !data[key] : (key in data && !data[key])) {
    data[key] = value;
  }
}

function slugify(text) {
  if (!text) return '';
  return text
    .normalize('NFD')
    .replace(/[̀-ͯ]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function isNonEmptyString(value) {
  return typeof value === 'string' && value.trim().length > 0;
}
