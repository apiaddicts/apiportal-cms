module.exports = {
  routes: [
    {
      method: 'GET',
      path: '/apim-configs/:slug',
      handler: 'apim-config.findOne',
      config: {
        auth: false,
        policies: []
      }
    },
    {
      method: 'POST',
      path: '/apim-configs/:id/sync',
      handler: 'api::apim-config.apim-config.sync',
      config: {
        auth: false,
        policies: []
      },
    },
    {
      method: 'POST',
      path: '/apim-configs/:id/credentials',
      handler: 'api::apim-config.apim-config.generateCredentials',
      config: {
        auth: false,
        policies: []
      },
    },
    {
      method: 'POST',
      path: '/apim-configs/:id/add-services',
      handler: 'api::apim-config.apim-config.addServices',
      config: {
        auth: false,
        policies: []
      },
    }
  ]
}