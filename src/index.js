const fs = require("fs");
const path = require("path");
const { pages, global, leadFormSubmissions } = require("./data/data.json");

async function isFirstRun() {
  const pluginStore = strapi.store({
    environment: strapi.config.environment,
    type: "type",
    name: "setup",
  });
  const initHasRun = await pluginStore.get({ key: "initHasRun" });
  await pluginStore.set({ key: "initHasRun", value: true });
  return !initHasRun;
}

async function setPublicPermissions(newPermissions) {
  // Find the ID of the public role
  const publicRole = await strapi
    .query("role", "users-permissions")
    .findOne({ type: "public" });

  // List all available permissions
  const publicPermissions = await strapi
    .query("permission", "users-permissions")
    .find({ type: "application", role: publicRole.id });

  // Update permission to match new config
  const controllersToUpdate = Object.keys(newPermissions);
  const updatePromises = publicPermissions
    .filter((permission) => {
      // Only update permissions included in newConfig
      if (!controllersToUpdate.includes(permission.controller)) {
        return false;
      }
      if (!newPermissions[permission.controller].includes(permission.action)) {
        return false;
      }
      return true;
    })
    .map((permission) => {
      // Enable the selected permissions
      return strapi
        .query("permission", "users-permissions")
        .update({ id: permission.id }, { enabled: true });
    });
  await Promise.all(updatePromises);
}

function getFileSizeInBytes(filePath) {
  const stats = fs.statSync(filePath);
  const fileSizeInBytes = stats["size"];
  return fileSizeInBytes;
}

function getFileData(fileName) {
  const filePath = `./data/uploads/${fileName}`;

  // Parse the file metadata
  const size = getFileSizeInBytes(filePath);
  const ext = fileName.split(".").pop();
  const mimeType = `image/${ext === "svg" ? "svg+xml" : ext}`;

  return {
    path: filePath,
    name: fileName,
    size,
    type: mimeType,
  };
}

// Create an entry and attach files if there are any
async function createEntry(model, entry, files) {
  try {
    const createdEntry = await strapi.query(model).create(entry);
    if (files) {
      await strapi.entityService.uploadFiles(createdEntry, files, {
        model,
      });
      const uploads = await strapi.query('file', 'upload').find();
      const uploadsWithInfo = uploads.map(upload => {
        const [alternativeText] = upload.name.split(".")
        return strapi.plugins.upload.services.upload.updateFileInfo(upload.id, {
          alternativeText
        })
      })
      await Promise.all(uploadsWithInfo)
    }
  } catch (e) {
    console.log(e);
  }
}

async function importPages() {
  const getPageCover = (slug) => {
    switch (slug) {
      case "":
        return getFileData("undraw-content-team.png");
      default:
        return null;
    }
  };

  return pages.map(async (page) => {
    const files = {};
    const shareImage = getPageCover(page.slug);
    if (shareImage) {
      files["metadata.shareImage"] = shareImage;
    }
    // Check if dynamic zone has attached files
    page.contentSections.forEach((section, index) => {
      if (section.__component === "sections.hero") {
        files[`contentSections.${index}.picture`] = getFileData(
          "undraw-content-team.svg"
        );
      } else if (section.__component === "sections.feature-rows-group") {
        const getFeatureMedia = (featureIndex) => {
          switch (featureIndex) {
            case 0:
              return getFileData("undraw-design-page.svg");
            case 1:
              return getFileData("undraw-create-page.svg");
            default:
              return null;
          }
        };
        section.features.forEach((feature, featureIndex) => {
          files[
            `contentSections.${index}.features.${featureIndex}.media`
          ] = getFeatureMedia(featureIndex);
        });
      } else if (section.__component === "sections.feature-columns-group") {
        const getFeatureMedia = (featureIndex) => {
          switch (featureIndex) {
            case 0:
              return getFileData("preview.svg");
            case 1:
              return getFileData("devices.svg");
            case 2:
              return getFileData("palette.svg");
            default:
              return null;
          }
        };
        section.features.forEach((feature, featureIndex) => {
          files[
            `contentSections.${index}.features.${featureIndex}.icon`
          ] = getFeatureMedia(featureIndex);
        });
      } else if (section.__component === "sections.testimonials-group") {
        section.logos.forEach((logo, logoIndex) => {
          files[
            `contentSections.${index}.logos.${logoIndex}.logo`
          ] = getFileData("logo.png");
        });
        section.testimonials.forEach((testimonial, testimonialIndex) => {
          files[
            `contentSections.${index}.testimonials.${testimonialIndex}.logo`
          ] = getFileData("logo.png");
          files[
            `contentSections.${index}.testimonials.${testimonialIndex}.picture`
          ] = getFileData("user.png");
        });
      }
    });

    await createEntry("page", page, files);
  });
}

async function importGlobal() {
  // Add images
  const files = {
    favicon: getFileData("favicon.png"),
    "metadata.shareImage": getFileData("undraw-content-team.png"),
    "navbar.logo": getFileData("logo.png"),
    "footer.logo": getFileData("logo.png"),
  };
  // Create entry
  await createEntry("global", global, files);
}

async function importLeadFormSubmissionData() {
  leadFormSubmissions.forEach(async (submission) => {
    await createEntry("lead-form-submissions", submission);
  });
}

async function ensureAuthenticatedPermissions(actions) {
  const role = await strapi.db.query('plugin::users-permissions.role').findOne({ where: { type: 'authenticated' } });
  if (!role) return;
  for (const action of actions) {
    const existing = await strapi.db.query('plugin::users-permissions.permission').findOne({ where: { action, role: role.id } });
    if (existing) {
      if (!existing.enabled) {
        await strapi.db.query('plugin::users-permissions.permission').update({ where: { id: existing.id }, data: { enabled: true } });
      }
    } else {
      await strapi.db.query('plugin::users-permissions.permission').create({ data: { action, enabled: true, role: role.id } });
    }
  }
}

async function importSeedData() {
  // Allow read of application content types
  await setPublicPermissions({
    global: ["find"],
    page: ["find", "findone"],
    'lead-form-submissions': ["create"],
  });

  // Create all entries
  await importGlobal();
  await importPages();
  await importLeadFormSubmissionData();
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
      } catch (error) {
        console.log("Could not import seed data");
        console.error(error);
      }
    }

    try {
      await ensureAuthenticatedPermissions([
        'api::purchase.purchase.checkout',
        'api::purchase.purchase.findOne',
        'api::purchase.purchase.setConnector',
        'api::purchase.purchase.consume',
        'api::purchase.purchase.assets',
      ]);
    } catch (error) {
      console.error('Could not ensure purchase permissions', error);
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
  },
  async destroy() {
    // some async code
  }
};
