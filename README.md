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

## 💳 Billing Flow

The CMS lets users purchase access to a `library-catalog` via Stripe Checkout. After payment, the user configures their own EDC consumer connector and consumes the catalog assets through it. The flow has three stages:

1. **Checkout** — `POST /api/purchases/checkout` creates a `Purchase` (status `pending`) and returns a Stripe Checkout URL. Stripe collects the payment.
2. **Webhook confirmation** — Stripe POSTs to `/api/stripe/webhook` with `checkout.session.completed` (success) or `payment_intent.payment_failed`. The handler verifies the signature with `STRIPE_WEBHOOK_SECRET` and updates the `Purchase` to `paid` or `failed`. Events are stored idempotently in `stripe_webhook_events`.
3. **EDC consumption** — once paid, the user posts the URL of their consumer connector (`POST /api/purchases/:id/connector`) and triggers a transfer per asset (`POST /api/purchases/:id/consume`). The CMS negotiates the contract against the catalog's `provider_url`, signs the agreement and pushes the data to a webhook URL provided by the user.

### Setting up the Stripe webhook

After deploying the CMS to a public host, register the endpoint in the Stripe Dashboard so Stripe can deliver events:

1. **Stripe Dashboard → Developers → Webhooks → Add endpoint**.
2. URL: `https://<your-cms-host>/api/stripe/webhook`.
3. Subscribe to `checkout.session.completed` and `payment_intent.payment_failed`.
4. Copy the resulting signing secret (`whsec_...`) into `STRIPE_WEBHOOK_SECRET`.

For local development the [Stripe CLI](https://docs.stripe.com/stripe-cli) forwards real events to your machine:

```bash
stripe listen --forward-to localhost:1337/api/stripe/webhook
```

The CLI prints the `whsec_...` to use locally.

### Catalog requirements

For a `library-catalog` to be purchasable and consumable, its `services` field must include a `schema:offers` block with `schema:price`, `schema:priceCurrency`, `bundleId` and `providerId`, and the `provider_url` must point to a reachable EDC connector that hosts the asset.

---

## ⚠️ Important Technical Notes

* **Security:** `config/middlewares.js` is configured to allow S3 and CDN assets through the Content Security Policy (CSP).

---

#### 💡 Now you're ready to go! 🚀 Happy coding! 🛠️
