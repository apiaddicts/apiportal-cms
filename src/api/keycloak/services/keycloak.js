'use strict';

const axios = require('axios');

module.exports = ({ strapi }) => ({
  async getAdminToken(config) {
    const { protocol, host, realm, clientId, clientSecret } = config;
    const url = `${protocol}://${host}/realms/${realm}/protocol/openid-connect/token`;

    const params = new URLSearchParams();
    params.append('grant_type', 'client_credentials');
    params.append('client_id', clientId);
    params.append('client_secret', clientSecret);

    try {
      const response = await axios.post(url, params);
      return response.data.access_token;
    } catch (error) {
      throw new Error(`Keycloak Error: ${error.response?.data?.error_description || error.message}`);
    }
  },

  async syncUser(userData, password = null) {
    const config = await strapi.query('api::idp-config.idp-config').findOne({
      where: { active: true, provider: 'Keycloak' }
    });

    if (!config) return;

    try {
      const token = await this.getAdminToken(config);
      const { protocol, host, realm } = config;
      const baseUrl = `${protocol}://${host}/admin/realms/${realm}/users`;

      const searchRes = await axios.get(`${baseUrl}?username=${userData.username}`, {
        headers: { Authorization: `Bearer ${token}` }
      });

      const existingUser = searchRes.data.find(u => u.username === userData.username || u.email === userData.email);

      const payload = {
        username: userData.username,
        email: userData.email,
        enabled: !userData.blocked,
        emailVerified: !!userData.confirmed,
        firstName: userData.firstName,
        lastName: userData.lastName,
      };

      if (existingUser) {
        await axios.put(`${baseUrl}/${existingUser.id}`, payload, {
          headers: { Authorization: `Bearer ${token}` }
        });

        if (password) {
          await axios.put(`${baseUrl}/${existingUser.id}/reset-password`, {
            type: 'password',
            value: password,
            temporary: false
          }, { headers: { Authorization: `Bearer ${token}` } });
        }
      } else {
        const createRes = await axios.post(baseUrl, {
          ...payload,
          credentials: password ? [{ type: 'password', value: password, temporary: false }] : []
        }, { headers: { Authorization: `Bearer ${token}` } });
      }
    } catch (error) {
      console.error('Keycloak Error:', error.response?.data || error.message);
      throw strapi.errors.badRequest('Error de sincronización con el proveedor de identidad (Keycloak).');
    }
  }
});