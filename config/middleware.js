module.exports = {
  settings: {
    parser: {
      enabled: true,
      multipart: true,
      formLimit: "200mb",
      jsonLimit: "200mb",
      formidable: {
        maxFileSize: 200 * 1024 * 1024 // Defaults to 200mb
      }
    }
  },
  //...
};