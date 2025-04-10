module.exports = {
  routes: [
    {
      method: "GET",
      path: "/blog-items",
      handler: "blog-item.find",
      config: {
        policies: []
      }
    },
    {
      method: "GET",
      path: "/blog-items/count",
      handler: "blog-item.count",
      config: {
        policies: []
      }
    },
    {
      method: "GET",
      path: "/blog-items/:id",
      handler: "blog-item.findOne",
      config: {
        policies: []
      }
    },
    {
      method: "POST",
      path: "/blog-items",
      handler: "blog-item.create",
      config: {
        policies: []
      }
    },
    {
      method: "PUT",
      path: "/blog-items/:id",
      handler: "blog-item.update",
      config: {
        policies: []
      }
    },
    {
      method: "DELETE",
      path: "/blog-items/:id",
      handler: "blog-item.delete",
      config: {
        policies: []
      }
    }
  ]
}