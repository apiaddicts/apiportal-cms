'use strict';

const PROTOCOL_ORDER = ['JSONRPC', 'GRPC', 'HTTP_JSON', 'A2UI'];

function asArray(value) {
  return Array.isArray(value) ? value : [];
}

function parseCard(card) {
  if (typeof card !== 'string') return card;
  try {
    return JSON.parse(card);
  } catch (err) {
    return null;
  }
}

function hasSupportedInterfaces(card) {
  return Array.isArray(card.supportedInterfaces) && card.supportedInterfaces.length > 0;
}

function getA2aVersion(card) {
  return hasSupportedInterfaces(card) ? 'v1_0' : 'v0_3';
}

function toProtocol(binding) {
  const normalized = String(binding || '').toUpperCase().replace(/[^A-Z]/g, '');
  if (normalized === 'JSONRPC') return 'JSONRPC';
  if (normalized === 'GRPC') return 'GRPC';
  if (['HTTPJSON', 'HTTP', 'REST'].includes(normalized)) return 'HTTP_JSON';
  return null;
}

function getProtocols(card) {
  const bindings = hasSupportedInterfaces(card)
    ? card.supportedInterfaces.map((item) => item?.protocolBinding)
    : [
      card.preferredTransport || card.transport || 'JSONRPC',
      ...asArray(card.additionalInterfaces).map((item) => item?.transport),
    ];
  const protocols = bindings.map(toProtocol);
  const a2ui = asArray(card.capabilities?.extensions).some((ext) => /a2ui/i.test(ext?.uri || ''))
    || asArray(card.defaultOutputModes).some((mode) => /a2ui/i.test(mode));
  if (a2ui) protocols.push('A2UI');
  return PROTOCOL_ORDER.filter((protocol) => protocols.includes(protocol));
}

function applyAgentCardDerivedFields(data) {
  if (!data || data.agentCard === undefined) return;
  const card = parseCard(data.agentCard);
  if (!card || typeof card !== 'object' || Array.isArray(card)) return;

  if (!data.a2aVersion) data.a2aVersion = getA2aVersion(card);
  if (!Array.isArray(data.protocols) || data.protocols.length === 0) {
    data.protocols = getProtocols(card).map((name) => ({ name }));
  }
}

module.exports = {
  hasSupportedInterfaces,
  getA2aVersion,
  getProtocols,
  applyAgentCardDerivedFields,
};
