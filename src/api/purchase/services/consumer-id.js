'use strict';

// v1: hardcoded consumer DID (matches `edc.participant.id` of the OpenDataSpace consumer connector
// and the value used in the Postman collection). v2 will replace this with the Keycloak `sub` claim.
const HARDCODED_CONSUMER_ID = 'consumer';

function resolveConsumerId(/* ctx */) {
  return HARDCODED_CONSUMER_ID;
}

module.exports = { resolveConsumerId, HARDCODED_CONSUMER_ID };
