# 🚀 Devportal Back ![License: LGPL v3](https://img.shields.io/badge/license-LGPL_v3-blue.svg)

DevPortal is an open-source developer portal designed to manage multiple APIs efficiently. It features a React-based frontend and a Strapi.io backend, providing a user-friendly interface for API documentation, authentication, and management.

## 📦 Requirements

- **Node.js v20.x** ⚙️ (pinned via `engines` in `package.json`)

## 🔧 Environment Variables

Below are the necessary environment variables required to run the project.

### 🗄️ Database

| Variable            | Description                                                       | Default     |
| ------------------- | ----------------------------------------------------------------- | ----------- |
| `DATABASE_CLIENT`   | Database client: `postgres` (production) or `sqlite` (local dev)  | `postgres`  |
| `DATABASE_HOST`     | Database hostname (only when `DATABASE_CLIENT=postgres`)          | —           |
| `DATABASE_PORT`     | Database port                                                     | —           |
| `DATABASE_NAME`     | Database name                                                     | —           |
| `DATABASE_USERNAME` | Database username                                                 | —           |
| `DATABASE_PASSWORD` | Database password                                                 | —           |
| `DATABASE_SCHEMA`   | Database schema                                                   | `public`    |
| `DATABASE_SSL`      | Use SSL (loads `config/ca-certificate.crt`)                       | `false`     |
| `DATABASE_FILENAME` | SQLite file path (only when `DATABASE_CLIENT=sqlite`)             | `.tmp/data.db` |

For **local development** you can set `DATABASE_CLIENT=sqlite` to skip running a Postgres server. The SQLite driver (`better-sqlite3`) is in `devDependencies`, so production images do not ship it. **In production always set `DATABASE_CLIENT=postgres`** along with the host/credentials variables.

### 💳 Stripe (billing)

Required to process catalog purchases via Stripe Checkout and accept Stripe webhook events.

| Variable                  | Description                                                                                              |
| ------------------------- | -------------------------------------------------------------------------------------------------------- |
| `STRIPE_SECRET_KEY`       | Stripe secret API key (`sk_test_...` or `sk_live_...`).                                                  |
| `STRIPE_PUBLISHABLE_KEY`  | Stripe publishable key (`pk_test_...` or `pk_live_...`).                                                 |
| `STRIPE_WEBHOOK_SECRET`   | Signing secret of the webhook endpoint (`whsec_...`). Each registered endpoint has its own.              |

After deploying, register a webhook endpoint in the Stripe Dashboard pointing to `https://<host>/api/stripe/webhook` and subscribe to `checkout.session.completed` and `payment_intent.payment_failed`. Copy the resulting signing secret into `STRIPE_WEBHOOK_SECRET`.

For local development you can use the Stripe CLI:

```bash
stripe listen --forward-to localhost:1337/api/stripe/webhook
```

The CLI prints a `whsec_...` to use as `STRIPE_WEBHOOK_SECRET` in your `.env`.

### 🌍 Optional AWS S3 Variables

These variables are required **only if you enable S3 storage** instead of local storage.

| Variable                  | Description                    |
| ------------------------- | ------------------------------ |
| `AWS_ACCESS_KEY_ID`       | AWS Access Key ID              |
| `AWS_SECRET_ACCESS_KEY`   | AWS Secret Access Key          |
| `AWS_REGION`              | AWS Region                     |
| `AWS_BUCKET`              | AWS S3 Bucket Name             |
| `AWS_BUCKET_SUBDIRECTORY` | Subdirectory inside the bucket |
| `AWS_CDN_DOMAIN`          | AWS CDN Domain for S3          |

## 🛠️ Configuration for File Uploads

Strapi supports **local storage** (default) or **AWS S3** storage. Modify `/config/plugins.js` to configure storage options.

### 🗄️ Local Storage (Default)

```js
module.exports = ({ env }) => ({
  upload: {
    provider: "local",
    providerOptions: {},
  },
});
```

### ☁️ AWS S3 Storage (Enable S3)

```js
module.exports = ({ env }) => ({
  upload: {
    provider: "aws-s3-use-cdn",
    providerOptions: {
      accessKeyId: env("AWS_ACCESS_KEY_ID"),
      secretAccessKey: env("AWS_ACCESS_SECRET"),
      region: env("AWS_REGION"),
      params: {
        Bucket: env("AWS_BUCKET"),
      },
      actionOptions: {
        upload: {},
        uploadStream: {},
        delete: {},
      },
      cdnDomain: env("AWS_CDN_DOMAIN"),
      bucketSubDirectory: env("AWS_BUCKET_SUBDIRECTORY"),
    },
  },
});
```

#### 💡 Now you're ready to go! 🚀 Happy coding! 🛠️
