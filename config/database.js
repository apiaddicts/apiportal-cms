module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', 'mysqlpre.cjfsrxm5ousg.eu-west-1.rds.amazonaws.com'),
        port: env.int('DATABASE_PORT', 3306),
        database: env('DATABASE_NAME', 'devportal_climatetrade_dbpre'),
        username: env('DATABASE_USERNAME', 'developer'),
        password: env('DATABASE_PASSWORD', 'developer'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {}
    },
  },
});
