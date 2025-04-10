module.exports = {
  routes: [
    {
      method: "GET",
      path: "/library-apis",
      handler: "library-api.find",
      config: {
        policies: []
      }
    },
    {
      method: "GET",
      path: "/library-apis/count",
      handler: "library-api.count",
      config: {
        policies: []
      }
    },
    {
      method: "GET",
      path: "/library-apis/:id",
      handler: "library-api.findOne",
      config: {
        policies: []
      }
    },
    {
      method: "POST",
      path: "/library-apis",
      handler: "library-api.create",
      config: {
        policies: []
      }
    },
    {
      method: "PUT",
      path: "/library-apis/:id",
      handler: "library-api.update",
      config: {
        policies: []
      }
    },
    {
      method: "DELETE",
      path: "/library-apis/:id",
      handler: "library-api.delete",
      config: {
        policies: []
      }
    }
  ]
}