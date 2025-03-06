# 🚀 Devportal Back ![License: LGPL v3](https://img.shields.io/badge/license-LGPL_v3-blue.svg)

DevPortal is an open-source developer portal designed to manage multiple APIs efficiently. It features a React-based frontend and a Strapi.io backend, providing a user-friendly interface for API documentation, authentication, and management.

## 📦 Requirements

- **Node.js v14.20.1** ⚙️

## 🔧 Environment Variables

Below are the necessary environment variables required to run the project.

### ⚠️ Important Variables

| Variable            | Description       |
| ------------------- | ----------------- |
| `DATABASE_CLIENT`   | Database client   |
| `DATABASE_HOST`     | Database hostname |
| `DATABASE_PORT`     | Database port     |
| `DATABASE_NAME`     | Database name     |
| `DATABASE_USERNAME` | Database username |
| `DATABASE_PASSWORD` | Database password |

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
