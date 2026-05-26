module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/products/:documentId/remove-api',
      handler: 'api::product.product.removeApi',
      config: { auth: false, policies: [] },
    },
    {
      method: 'POST',
      path: '/products/:documentId/add-api',
      handler: 'api::product.product.addApi',
      config: { auth: false, policies: [] },
    },
    {
      method: 'DELETE',
      path: '/products/:documentId',
      handler: 'api::product.product.delete',
      config: { auth: false, policies: [] },
    },
  ],
};
