module.exports = [
  'strapi::body',
  {
    name: 'strapi::cors',
    config: {
      origin: '*',
      headers: [
        'Content-Type',
        'Authorization',
        'apikey'
      ],
      methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
      credentials: true,
    },
  },
  'strapi::errors',
  'strapi::favicon',
  'strapi::query',
  'strapi::responses',
  'strapi::public',
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
          upgradeInsecureRequests: null,
        },
      },
    },
  },
];
