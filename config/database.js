module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env("DATABASE_HOST"),
      port: env.int("DATABASE_PORT"),
      database: env("DATABASE_NAME"),
      username: env("DATABASE_USERNAME"),
      password: env("DATABASE_PASSWORD"),
      ssl: false,
    },
    debug: false
  },
});
