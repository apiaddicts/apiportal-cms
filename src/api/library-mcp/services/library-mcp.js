'use strict';

/**
 * library-mcp service
 */

const { createCoreService } = require('@strapi/strapi').factories;

const CONNECTION_TIMEOUT = 120000;
const REQUEST_TIMEOUT = 60000;

async function callMcpTool(transport, url, headers, command, args, toolName, toolArgs) {
  let client, clientTransport;

  const { Client } = await import('@modelcontextprotocol/sdk/client/index.js');

  if (transport === 'stdio') {
    const { StdioClientTransport } = await import('@modelcontextprotocol/sdk/client/stdio.js');
    const isWin = process.platform === 'win32';
    clientTransport = new StdioClientTransport({
      command: isWin ? 'cmd' : command,
      args: isWin ? ['/c', command, ...args] : args,
    });
  } else if (transport === 'sse') {
    const { SSEClientTransport } = await import('@modelcontextprotocol/sdk/client/sse.js');
    clientTransport = new SSEClientTransport(new URL(url), { requestInit: { headers } });
  } else if (transport === 'http') {
    const { StreamableHTTPClientTransport } = await import('@modelcontextprotocol/sdk/client/streamableHttp.js');
    clientTransport = new StreamableHTTPClientTransport(new URL(url), { requestInit: { headers } });
  }

  client = new Client({ name: 'strapi-connect', version: '1.0' });
  await connectClient(client, clientTransport);

  try {
    const result = await client.callTool({ name: toolName, arguments: toolArgs ?? {} });
    return { success: true, result };
  } finally {
    await client.close().catch(() => {});
  }
}

async function fetchMcpData(client) {
  const withTimeout = (promise) =>
    Promise.race([promise, new Promise((_, r) => setTimeout(() => r(new Error('timeout')), REQUEST_TIMEOUT))]);

  const [toolsRes, resourcesRes, promptsRes] = await Promise.allSettled([
    withTimeout(client.listTools()),
    withTimeout(client.listResources()),
    withTimeout(client.listPrompts()),
  ]);

  await client.close().catch(() => {});

  return {
    tools: toolsRes.status === 'fulfilled' ? (toolsRes.value?.tools ?? []) : [],
    resources: resourcesRes.status === 'fulfilled' ? (resourcesRes.value?.resources ?? []) : [],
    prompts: promptsRes.status === 'fulfilled' ? (promptsRes.value?.prompts ?? []) : [],
  };
}

async function connectClient(client, transport) {
  const connectWithTimeout = new Promise((_, reject) =>
    setTimeout(() => reject(new Error('connection timeout')), CONNECTION_TIMEOUT)
  );
  await Promise.race([client.connect(transport), connectWithTimeout]);
}

async function tryStdioSDK(command, args = []) {
  const { Client } = await import('@modelcontextprotocol/sdk/client/index.js');
  const { StdioClientTransport } = await import('@modelcontextprotocol/sdk/client/stdio.js');

  const isWin = process.platform === 'win32';
  const resolvedCommand = isWin ? 'cmd' : command;
  const resolvedArgs = isWin ? ['/c', command, ...args] : args;

  const transport = new StdioClientTransport({
    command: resolvedCommand,
    args: resolvedArgs,
  });

  const client = new Client({ name: 'strapi-connect', version: '1.0' });
  await connectClient(client, transport);
  return fetchMcpData(client);
}

async function tryLegacySSE(url, headers) {
  const { Client } = await import('@modelcontextprotocol/sdk/client/index.js');
  const { SSEClientTransport } = await import('@modelcontextprotocol/sdk/client/sse.js');

  const transport = new SSEClientTransport(new URL(url), { requestInit: { headers } });
  const client = new Client({ name: 'strapi-connect', version: '1.0' });
  await connectClient(client, transport);
  return fetchMcpData(client);
}

async function tryStreamableHTTP(url, headers) {
  const { Client } = await import('@modelcontextprotocol/sdk/client/index.js');
  const { StreamableHTTPClientTransport } = await import('@modelcontextprotocol/sdk/client/streamableHttp.js');

  const transport = new StreamableHTTPClientTransport(new URL(url), { requestInit: { headers } });
  const client = new Client({ name: 'strapi-connect', version: '1.0' });
  await connectClient(client, transport);
  return fetchMcpData(client);
}

async function runStrategy(fn) {
  try {
    const result = await fn();
    return { success: true, ...result, source: 'direct' };
  } catch (err) {
    return { success: false, error: err?.message ?? String(err) };
  }
}

module.exports = createCoreService('api::library-mcp.library-mcp', ({ strapi }) => ({
  async connectMcp(slug, options = {}) {
    const { transport, headers, command, args = [], url } = options;

    if (transport === 'stdio' && command) {
      return runStrategy(() => tryStdioSDK(command, args));
    }

    if (transport === 'sse' && url) {
      return runStrategy(() => tryLegacySSE(url, headers));
    }

    if (transport === 'http' && url) {
      return runStrategy(() => tryStreamableHTTP(url, headers));
    }

    return { success: false, error: 'No valid transport configuration provided' };
  },

  async callTool(slug, options = {}) {
    const { transport, headers, command, args = [], url, toolName, toolArgs } = options;

    if (!toolName) return { success: false, error: 'toolName is required' };

    return runStrategy(() => callMcpTool(transport, url, headers, command, args, toolName, toolArgs));
  },
}));