module.exports = ({ env }) => ({
  upload: {
    config: {
      provider: 'aws-s3',
      providerOptions: {
        rootPath: env("AWS_FOLDER", 'assets'),
        s3Options: {
          creadentials : {
            accessKeyId: env('AWS_ACCESS_KEY_ID'),
            secretAccessKey: env('AWS_ACCESS_SECRET'),
          },
          region: env('AWS_REGION'),
          params: {
            ACL: 'private',
            Bucket: env('AWS_BUCKET'),
          },
        }
      },
      actionOptions: {
        upload: {},
        uploadStream: {},
        delete: {},
      },
    },
  },
  email: {
    config: {
      provider: 'amazon-ses',
      providerOptions: {
        key: env('AWS_ACCESS_KEY_ID_SES'),
        secret: env('AWS_SECRET_ACCESS_KEY_SES'),
        amazon: env('AWS_URL_SES'),
      },
      settings: {
        defaultFrom: env('EMAIL_DEFAULT_FROM'),
        defaultReplyTo: env('EMAIL_DEFAULT_FROM'),
      },
    },
  },
  'strapi-code-editor-custom-field': {
    enabled: true,
  },
});
