module.exports = ({ env }) => {
  const awsBucket = env('AWS_BUCKET')?.trim();
  const awsSesHost = env('AWS_URL_SES')?.trim();

  const uploadConfig = (awsBucket && awsBucket !== "")
    ? {
        provider: 'aws-s3',
        providerOptions: {
          rootPath: env("AWS_FOLDER", 'assets'),
          s3Options: {
            credentials: {
              accessKeyId: env('AWS_ACCESS_KEY_ID'),
              secretAccessKey: env('AWS_ACCESS_SECRET'),
            },
            region: env('AWS_REGION'),
            params: {
              ACL: 'private',
              Bucket: awsBucket,
            },
          }
        },
        actionOptions: {
          upload: {},
          uploadStream: {},
          delete: {},
        },
      }
    : {
        provider: "local",
        providerOptions: {},
      };

  const emailConfig = (awsSesHost && awsSesHost !== "")
    ? {
        provider: '@strapi/provider-email-nodemailer',
        providerOptions: {
          host: awsSesHost,
          port: env.int('AWS_URL_PORT'),
          auth: {
            user: env('AWS_ACCESS_KEY_ID_SES'),
            pass: env('AWS_SECRET_ACCESS_KEY_SES'),
          }
        },
      }
    : {
        provider: 'nodemailer',
        providerOptions: {
          host: env('SMTP_HOST'),
          port: env('SMTP_PORT'),
          auth: {
            user: env('SMTP_USERNAME'),
            pass: env('SMTP_PASSWORD'),
          },
          secure: false,
        },
      };

  return {
    upload: { config: uploadConfig },
    email: {
      config: {
        ...emailConfig,
        settings: {
          defaultFrom: env('EMAIL_DEFAULT_FROM'),
          defaultReplyTo: env('EMAIL_DEFAULT_FROM'),
        },
      }
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
  };
};