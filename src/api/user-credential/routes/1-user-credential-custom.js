module.exports = {
  routes: [
    {
      method: 'POST',
      path: '/user-credentials/:documentId/add-products',
      handler: 'api::user-credential.user-credential.addProducts',
      config: { auth: false, policies: [] },
    },
    {
      method: 'POST',
      path: '/user-credentials/:documentId/remove-products',
      handler: 'api::user-credential.user-credential.removeProducts',
      config: { auth: false, policies: [] },
    },
    {
      method: 'DELETE',
      path: '/user-credentials/:documentId',
      handler: 'api::user-credential.user-credential.delete',
      config: { auth: false, policies: [] },
    },
  ],
};
