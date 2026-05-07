# 🚀 DevPortal CMS ![License: LGPL v3](https://img.shields.io/badge/license-LGPL_v3-blue.svg)

DevPortal CMS is an open-source developer portal designed to manage multiple APIs efficiently. It features a React-based frontend and a Strapi.io backend, providing a user-friendly interface for API documentation, authentication, and management.

---

## 🔌 Smart Integrations

The CMS features an auto-detect logic that adapts to the environment based on defined variables:

* **Storage (Uploads):** Uses **AWS S3** if `AWS_BUCKET` is provided; otherwise, it defaults to the **local filesystem**.
* **Email:** Uses **AWS SES** if `AWS_URL_SES` is configured; otherwise, it uses **standard SMTP**.

---

## 📦 Container Specifications

The project uses a lightweight **Node 20 Alpine** image for high performance and security.

* **Base Image:** `node:20.19.0-alpine`
* **Default Port:** `1337`
* **Execution Mode:** Production (`npm run start`)

---

## 🔧 Environment Variables

Initialize your local environment file:
```bash
cp .env.example .env
```

Then update the values according to your environment.

---

### ⚠️ Core CMS Variables

| Variable     | Description              |
| ------------ | ------------------------ |
| `STRAPI_URL` | Public CMS URL           |
| `PORT`       | CMS port (default: 1337) |
| `APP_KEYS`   | Strapi application keys  |
| `JWT_SECRET` | JWT signing secret       |

---

### 🗄️ Database Configuration (PostgreSQL)

| Variable            | Description                   |
| ------------------- | ----------------------------- |
| `DATABASE_CLIENT`   | `postgres`                    |
| `DATABASE_HOST`     | Database hostname             |
| `DATABASE_PORT`     | Database port (default: 5433) |
| `DATABASE_NAME`     | Database name                 |
| `DATABASE_USERNAME` | Database username             |
| `DATABASE_PASSWORD` | Database password             |
| `DATABASE_SSL`      | Enable SSL (`true` / `false`) |

---

### ✉️ Email Configuration

#### Production (AWS SES)

| Variable                    | Description          |
| --------------------------- | -------------------- |
| `AWS_ACCESS_KEY_ID_SES`     | AWS SES access key   |
| `AWS_SECRET_ACCESS_KEY_SES` | AWS SES secret       |
| `AWS_URL_SES`               | SES SMTP endpoint    |
| `AWS_URL_PORT`              | SES SMTP port        |
| `EMAIL_DEFAULT_FROM`        | Default sender email |

---

#### Local / Development (SMTP)

| Variable             | Description          |
| -------------------- | -------------------- |
| `SMTP_HOST`          | SMTP host            |
| `SMTP_PORT`          | SMTP port            |
| `SMTP_USERNAME`      | SMTP user            |
| `SMTP_PASSWORD`      | SMTP password        |
| `EMAIL_DEFAULT_FROM` | Default sender email |

---

### 💳 Stripe

| Variable                 | Description                                            |
| ------------------------ | ------------------------------------------------------ |
| `STRIPE_SECRET_KEY`      | Stripe secret API key                                  |
| `STRIPE_PUBLISHABLE_KEY` | Stripe publishable key                                 |
| `STRIPE_WEBHOOK_SECRET`  | Signing secret of the `/api/stripe/webhook` endpoint   |

---

### ☁️ AWS S3 Variables

These variables are required **only if you enable S3 storage** instead of local storage.

| Variable                  | Description                    |
| ------------------------- | ------------------------------ |
| `AWS_ACCESS_KEY_ID`       | AWS Access Key ID              |
| `AWS_SECRET_ACCESS_KEY`   | AWS Secret Access Key          |
| `AWS_REGION`              | AWS Region                     |
| `AWS_BUCKET`              | AWS S3 Bucket Name             |
| `AWS_BUCKET_SUBDIRECTORY` | Subdirectory inside the bucket |
| `AWS_CDN_DOMAIN`          | AWS CDN Domain for S3          |

---

## 🛠️ Docker Execution

### 1️⃣ Start Services

```bash
docker-compose up -d --build
```

### 2️⃣ Data Seeding (Auto-Import)

The CMS includes an auto-import script that runs on the first startup to create essential pages (Home, APIs, Blog, FAQ).

> **Note:** To reset the database and re-run the seed script:
> `docker-compose down -v` and restart.

---

## ⚠️ Important Technical Notes

* **Security:** `config/middlewares.js` is configured to allow S3 and CDN assets through the Content Security Policy (CSP).

---

#### 💡 Now you're ready to go! 🚀 Happy coding! 🛠️
