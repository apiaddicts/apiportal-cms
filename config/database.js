module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: "postgres",
        host: env("DATABASE_HOST"),
        port: env.int("DATABASE_PORT"),
        database: env("DATABASE_NAME"),
        username: env("DATABASE_USERNAME"),
        password: env("DATABASE_PASSWORD"),
        schema: env("DATABASE_SCHEMA"),
        ssl:  { "rejectUnauthorized": false },
      },
      debug: false,
      acquireConnectionTimeout: 600000,
      options: {
        pool: {
          min: 0,
          max: 100,
          acquireTimeoutMillis: 300000,
          createTimeoutMillis: 300000,
          destroyTimeoutMillis: 50000,
          idleTimeoutMillis: 300000,
          reapIntervalMillis: 10000,
          createRetryIntervalMillis: 2000,
          propagateCreateError: false,
        },
      }
    },
  },
});
