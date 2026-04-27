'use strict';

module.exports = {
  async validate(ctx) {
    const { slug, credential } = ctx.request.body;

    if (!slug && !credential) {
      return ctx.badRequest('Se requiere "slug" o "credential"');
    }

    try {
      const service = strapi.service('api::gaia-x.gaia-x');
      const result = credential
        ? await service.validateCredentialDirect(credential)
        : await service.validateCredential(slug);
      return ctx.send(result);
    } catch (error) {
      strapi.log.error(`[gaia-x] Error en validación Gaia-X: ${error.message}`);
      return ctx.internalServerError('Error en el servicio de validación Gaia-X');
    }
  },
};
