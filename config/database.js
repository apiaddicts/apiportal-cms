const fs = require('fs');
const path = require('path');

module.exports = ({ env }) => {
  const client = env('DATABASE_CLIENT', 'postgres');

  if (client === 'sqlite') {
    return {
      connection: {
        client: 'sqlite',
        connection: {
          filename: path.join(__dirname, '..', env('DATABASE_FILENAME', '.tmp/data.db')),
        },
        useNullAsDefault: true,
      },
    };
  }

  return {
    connection: {
      client,
      connection: {
        host: env('DATABASE_HOST'),
        port: env.int('DATABASE_PORT'),
        database: env('DATABASE_NAME'),
        user: env('DATABASE_USERNAME'),
        password: env('DATABASE_PASSWORD'),
        schema: env('DATABASE_SCHEMA', 'public'),
        app: {
          keys: env.array('APP_KEYS'),
        },
        ssl: env.bool('DATABASE_SSL', false) && {
          ca: fs.readFileSync(`${__dirname}/ca-certificate.crt`).toString(),
        },
      },
      debug: false,
    },
  };
};
