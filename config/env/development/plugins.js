module.exports = ({ env }) => ({
  upload: {
    config: {
      provider: "local",
      providerOptions: {},
    },
  },
  email: {
    config: {
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