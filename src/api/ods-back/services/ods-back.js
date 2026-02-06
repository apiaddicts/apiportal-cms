'use strict';

const axios = require('axios');

module.exports = ({ strapi }) => ({
  async getDomains(config) {
    const { protocol, host, dataspace_id } = config;
    const url = `${protocol}://${host}/dataportals/${dataspace_id}/domains`;
    try {
      const response = await axios.get(url)
      return response.data;
    } catch (error) {
      throw new Error(`Keycloak Error: ${error.response?.data?.error_description || error.message}`);
    }
  },

  async getDataspaces(config) {
    const { protocol, host, dataspace_id } = config;
    const url = `${protocol}://${host}/dataportals/${dataspace_id}/dataspaces`;
    try {
      const response = await axios.get(url)
      return response.data;
    } catch (error) {
      throw new Error(`Keycloak Error: ${error.response?.data?.error_description || error.message}`);
    }
  },

  async getCatalogs(config) {
    const { protocol, host, dataspace_id } = config;
    const url = `${protocol}://${host}/dataportals/${dataspace_id}/catalogs`;
    try {
      const response = await axios.get(url)
      return response.data;
    } catch (error) {
      throw new Error(`Keycloak Error: ${error.response?.data?.error_description || error.message}`);
    }
  }
})