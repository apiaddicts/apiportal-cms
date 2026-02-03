module.exports = {
  routes: [
    {
      method: 'GET',
      path: '/idp-configs/:slug',
      handler: 'idp-config.findOne',
      config: {
        auth: false,
        policies: []
      }
    }
  ]
};