module.exports = ({ env }) => ({
    apiToken: {
        salt: env('API_TOKEN_SALT', '69e976de7296a888c503b3e4a4414282'),
    },
    auth: {
        secret: env('ADMIN_JWT_SECRET', '69e976de7296a888c503b3e4a4414282'),
    },
});