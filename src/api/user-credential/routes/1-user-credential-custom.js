module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/user-credentials/:documentId/add-products',
      handler: 'api::user-credential.user-credential.addProducts',
      config: {
        auth: false,
        policies: [],
      },
    },
  ],
};
