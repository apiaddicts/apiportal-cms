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
    }
  ]
}