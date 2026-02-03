module.exports = [
  'strapi::errors',
  {
    name: 'strapi::security',
    config: {
      contentSecurityPolicy: {
        useDefaults: true,
        directives: {
          'connect-src': ["'self'", 'https:'],
          'img-src': [
            "'self'",
            'data:',
            'blob:',
            'dl.airtable.com',
            's3.eu-west-1.amazonaws.com',
            'market-assets.strapi.io'
          ],
          'media-src': [
            "'self'",
            'data:',
            'blob:',
            'dl.airtable.com',
            's3.eu-west-1.amazonaws.com',
            'market-assets.strapi.io'
          ],
          'script-src-elem': [
            "'self'",
            "'unsafe-inline'",
            'cdn.jsdelivr.net'
          ],
          upgradeInsecureRequests: null,
        },
      },
    },
  },
  'strapi::cors',
  'strapi::session',
  'strapi::body',
  'strapi::query',
  'strapi::responses',
  'strapi::favicon',
  'strapi::public',
  'global::disable-role-policy',
];
