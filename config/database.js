const fs = require('fs');

module.exports = ({ env }) => ({
  connection: {
    client: env("DATABASE_CLIENT"),
    connection: {
      host: env("DATABASE_HOST"),
      port: env.int("DATABASE_PORT"),
      database: env("DATABASE_NAME"),
      user: env("DATABASE_USERNAME"),
      password: env("DATABASE_PASSWORD"),
      schema: env("DATABASE_SCHEMA", 'public'),
      app: {
        keys: env.array('APP_KEYS'),
      },
      ssl: env.bool("DATABASE_SSL", false) && {
        ca: fs.readFileSync(`${__dirname}/ca-certificate.crt`).toString()
      },
    },
    debug: false
  },
});
