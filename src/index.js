'use strict';

const { pages, global, libraryApis, blogItems } = require("./data/data.json");
const { setupAuthSettings } = require("./setup/email-config");

async function isFirstRun() {
  const pluginStore = strapi.store({
    environment: strapi.config.environment,
    type: "type",
    name: "setup",
  });

  const initHasRun = await pluginStore.get({ key: "initHasRun" });

  if (initHasRun) {
    return false;
  }

  await pluginStore.set({ key: "initHasRun", value: true });
  return true;
}

async function setPublicPermissions() {
  try {
    const roles = await strapi.query("plugin::users-permissions.role").findMany({
      where: { type: { $in: ["public", "authenticated"] } }
    });

    const actionsToEnable = [
      "api::apim-config.apim-config.find",
      "api::apim-config.apim-config.findOne",
      "api::blog-item.blog-item.find",
      "api::blog-item.blog-item.findOne",
      "api::code-sample.code-sample.find",
      "api::code-sample.code-sample.findOne",
      "api::idp-config.idp-config.find",
      "api::idp-config.idp-config.findOne",
      "api::library-api.library-api.find",
      "api::library-api.library-api.findOne",
      "api::library-mcp.library-mcp.find",
      "api::library-mcp.library-mcp.connect",
      "api::library-mcp.library-mcp.findOne",
      "api::page.page.find",
      "api::page.page.findOne",
      "api::product.product.find",
      "api::product.product.findOne",
      "api::setting-page.setting-page.find",
      "api::setting-page.setting-page.findOne",

      "plugin::users-permissions.user.find",
      "plugin::users-permissions.user.findOne",
      "plugin::users-permissions.user.me"
    ];

    for (const role of roles) {
      for (const action of actionsToEnable) {
        const permission = await strapi.query("plugin::users-permissions.permission").findOne({
          where: { role: role.id, action: action }
        });

        if (permission) {
          await strapi.query("plugin::users-permissions.permission").update({
            where: { id: permission.id },
            data: { enabled: true },
          });
        } else {
          await strapi.query("plugin::users-permissions.permission").create({
            data: { action, enabled: true, role: role.id },
          });
        }
      }
    }
  } catch (err) {
    console.error(err.message);
  }
}

async function createEntry(model, data) {
  try {
    const uid = `api::${model}.${model}`;
    if (!strapi.contentTypes[uid]) return;

    return await strapi.documents(uid).create({
      data: data,
      status: 'published',
    });
  } catch (e) {
    console.error(e.message);
  }
}

async function setupLocales() {
  try {
    const localeService = strapi.plugin('i18n').service('locales');
    const existingLocales = await localeService.find();
    const hasSpanish = existingLocales.some(l => l.code === 'es');

    if (!hasSpanish) {
      await localeService.create({
        name: 'Spanish (es)',
        code: 'es',
        isDefault: false,
      });
    }
  } catch (err) {
    console.error(err.message);
  }
}

async function importSettings() {
  const defaultSettings = {
    mainColor: "#05172e",
    secondaryColor: "#fb952a",
    typography: "Montserrat",
    showAuthButtons: false,
  };

  await createEntry("setting-page", defaultSettings);
}

async function importSeedData() {

  await setupLocales();

  await setPublicPermissions();

  await createEntry("global", global);

  await importSettings();

  for (const page of pages) {
    await createEntry("page", page);
  }

  if (libraryApis) {
    for (const api of libraryApis) {
      await createEntry("library-api", api);
    }
  }

  if (blogItems) {
    for (const blog of blogItems) {
      await createEntry("blog-item", blog);
    }
  }
}

module.exports = {
  async register({ strapi }) {
    const extensionService = strapi.plugin('graphql').service('extension');
    extensionService.use(({ nexus }) => ({
      types: [
        nexus.extendType({
          type: 'UsersPermissionsMe',
          definition(t) {
            t.string('firstName');
            t.string('lastName');
            t.string('companyName');
          },
        }),
      ]
    }));
  },
  async bootstrap({ strapi }) {
    const shouldImportSeedData = await isFirstRun();
    if (shouldImportSeedData) {
      try {
        await importSeedData();
        await setupAuthSettings(strapi);
      } catch (error) {
        console.log("Could not import seed data");
        console.error(error);
      }
    }

    try {
      const idpConfig = await strapi.db.query('api::idp-config.idp-config').findOne({
        where: { active: true, provider: 'Keycloak' }
      });
      const pluginStore = strapi.store({ type: 'plugin', name: 'users-permissions', key: 'grant' });
      const config = await pluginStore.get();

      if (idpConfig) {
          const cleanHost = idpConfig.host.replace(/^(https?:\/\/)/, '').replace(/\/$/, '');
          const realm = idpConfig.realm; 
          const protocol = idpConfig.protocol || 'http';
          const baseUrl = `${protocol}://${cleanHost}/realms/${realm}`;

          config.keycloak.enabled = true;
          config.keycloak.clientId = idpConfig.clientId;
          config.keycloak.clientSecret = idpConfig.clientSecret || "";

          config.keycloak.key = idpConfig.clientId;
          config.keycloak.secret = idpConfig.clientSecret || "";
          config.keycloak.subdomain = "";
          config.keycloak.protocol = protocol;
          config.keycloak.host = cleanHost;

          config.keycloak.authorize_url = `${baseUrl}/protocol/openid-connect/auth`;
          config.keycloak.access_url = `${baseUrl}/protocol/openid-connect/token`;
          config.keycloak.profile_url = `${baseUrl}/protocol/openid-connect/userinfo`;

          config.keycloak.jwksurl = `${baseUrl}/protocol/openid-connect/certs`;

          await pluginStore.set({ value: config });
      }
    } catch (error) {
      console.error(error);
    }

    strapi.db.lifecycles.subscribe({
      models: ['plugin::users-permissions.user'],

      async afterCreate(event) {
        const { result, params } = event;
        const plainPassword = params.data.password;

        try {
          const keycloakService = strapi.service('api::keycloak.keycloak');
          if (keycloakService) {
            await keycloakService.syncUser(result, plainPassword);
          }
        } catch (error) {
          throw error;
        }
      },

      async beforeUpdate(event) {
        const { where, data } = event.params;

        if (!data) return;

        try {
          const currentUser = await strapi.query('plugin::users-permissions.user').findOne({ where });
          if (!currentUser) return;

          const updatedData = { ...currentUser, ...data };

          const plainPassword = data.password || null;

          const keycloakService = strapi.service('api::keycloak.keycloak');
          if (keycloakService) {
            await keycloakService.syncUser(updatedData, plainPassword);
          }
        } catch (error) {
          throw error;
        }
      }
    });

    strapi.db.lifecycles.subscribe({
      models: ['elements.titles'],

      async beforeCreate(event) {
        const { data } = event.params;
        if (!data?.title?.trim()) {
          throw new ApplicationError('The "title" field in Tags cannot be empty.');
        }

        if (!data?.label?.trim()) {
          throw new ApplicationError('The "label" field in Tags cannot be empty.');
        }
      },

      async beforeUpdate(event) {
        const { data } = event.params;
        if (Object.hasOwn(data, 'title') && (!data?.title.trim())) {
          throw new ApplicationError('The "title" field in Tags cannot be empty.');
        }
        if (Object.hasOwn(data, 'label') && (!data?.label.trim())) {
          throw new ApplicationError('The "label" field in Tags cannot be empty.');
        }
      },
    });
  },
  async destroy() {
    // some async code
  }
};
