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
      provider: '@strapi/provider-email-nodemailer',
      providerOptions: {
        host: env('AWS_URL_SES'),
        port: env.int('AWS_URL_PORT'),
        auth: {
          user: env('AWS_ACCESS_KEY_ID_SES'),
          pass: env('AWS_SECRET_ACCESS_KEY_SES'),
        }
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
  "users-permissions": {
    "config": {
      "register": {
        "allowedFields": ["firstName", "lastName", "companyName"],
      }
    }
  },
});