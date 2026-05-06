'use strict';

async function edcFetch(url, { method = 'GET', apiKey, body, headers = {} } = {}) {
  let res;
  try {
    res = await fetch(url, {
      method,
      headers: {
        'Content-Type': 'application/json',
        'X-Api-Key': apiKey,
        ...headers,
      },
      body: body ? JSON.stringify(body) : undefined,
    });
  } catch (e) {
    const err = new Error(`Cannot reach EDC at ${url} (${e.cause?.code || e.message})`);
    err.status = 0;
    err.cause = e;
    throw err;
  }
  const text = await res.text();
  let data;
  try { data = text ? JSON.parse(text) : null; } catch { data = text; }
  if (!res.ok) {
    const detail = typeof data === 'string' ? data.slice(0, 200) : JSON.stringify(data || {}).slice(0, 200);
    const err = new Error(`EDC ${method} ${url} → ${res.status} ${detail}`);
    err.status = res.status;
    err.body = data;
    throw err;
  }
  return data;
}

module.exports = { edcFetch };
