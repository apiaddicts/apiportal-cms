'use strict';

const { AsyncResource } = require('node:async_hooks');

const SYNC_APIS_CRON_KEY = 'syncApisJob';

const getTimestamp = () => {
  const now = new Date();
  return `[${now.toISOString().replace('T', ' ').split('.')[0]} UTC]`;
};


const syncApisTask = async ({ strapi }) => {

  strapi.log.info(`${getTimestamp()} Starting synchronization with integrator...`);

  try {
    const result = await strapi.service('api::apim-config.apim-config').syncFromIntegrator();
    strapi.log.info(
      `${getTimestamp()} Sync completed: ${result.configsProcessed} configs processed. ` +
      `(Created: ${result.created}, Updated: ${result.updated})`
    );
  } catch (error) {
    strapi.log.error(`${getTimestamp()} Synchronization failed: ${error.message}`);
  }
};

function removeCronJob(strapi, name) {
  if (typeof strapi.cron.remove !== 'function') {
    const jobs = strapi.cron.jobs;
    if (!jobs) {
      strapi.log.info(`${getTimestamp()} CRON: no jobs found - "${name}" was not registered.`);
      return;
    }
    const job = jobs instanceof Map ? jobs.get(name) : jobs[name];
    if (!job) {
      strapi.log.info(`${getTimestamp()} CRON: "${name}" was not registered - nothing to remove.`);
      return;
    }
    job.cancel?.();
    job.stop?.();
    if (jobs instanceof Map) jobs.delete(name);
    else delete jobs[name];
    strapi.log.info(`${getTimestamp()} CRON: "${name}" removed successfully.`);
    return;
  }

  const jobs = strapi.cron.jobs;
  const exists = Array.isArray(jobs)
    ? jobs.some(j => j.name === name)
    : jobs?.has?.(name) ?? (name in (jobs ?? {}));

  if (exists) {
    strapi.cron.remove(name);
    strapi.log.info(`${getTimestamp()} CRON: "${name}" removed successfully.`);
  } else {
    strapi.log.info(`${getTimestamp()} CRON: "${name}" was not registered - nothing to remove.`);
  }
}

async function registerDynamicCrons(strapi) {
  try {
    removeCronJob(strapi, SYNC_APIS_CRON_KEY);
  } catch (err) {
    strapi.log.warn(`${getTimestamp()} CRON: could not remove "${SYNC_APIS_CRON_KEY}" — ${err.message}`);
  }

  const setting = await strapi.db.query('api::setting-cron.setting-cron').findOne({
    where: { type: 'sync-apis', publishedAt: { $notNull: true } },
    orderBy: { updatedAt: 'desc' },
  });

  if (!setting?.enabled) {
    strapi.log.info(`${getTimestamp()} CRON: "${SYNC_APIS_CRON_KEY}" is disabled or not configured — skipping registration.`);
    return;
  }

  strapi.cron.add({
    [SYNC_APIS_CRON_KEY]: {
      task: syncApisTask,
      options: {
        rule: setting.schedule_cron,
        tz: 'UTC',
      },
    },
  });

  strapi.log.info(`${getTimestamp()} CRON: "${SYNC_APIS_CRON_KEY}" registered with rule: "${setting.schedule_cron}"`);
}

const setupCronScheduler = (strapi) => {
  const cronScheduler = new AsyncResource('cron-scheduler');
  let cronRescheduleTimer = null;

  const scheduleCronReload = () => {
    if (cronRescheduleTimer) clearTimeout(cronRescheduleTimer);
    cronRescheduleTimer = cronScheduler.runInAsyncScope(() =>
      setTimeout(() => {
        cronRescheduleTimer = null;
        registerDynamicCrons(strapi);
      }, 500)
    );
  };

  strapi.db.lifecycles.subscribe({
    models: ['api::setting-cron.setting-cron'],
    afterCreate() { scheduleCronReload(); },
    afterUpdate() { scheduleCronReload(); },
    afterDelete() { scheduleCronReload(); },
  });
};

module.exports = { registerDynamicCrons, setupCronScheduler };