module.exports = (config, { strapi }) => {
  return async (ctx, next) => {
    if (!ctx.request.url.startsWith('/content-manager/collection-types/plugin::users-permissions.role')) {
      return next();
    }

    const page = Number(ctx.query.page || 1);
    const pageSize = Number(ctx.query.pageSize || 10);
    const offset = (page - 1) * pageSize;

    const [results, total] = await Promise.all([
      strapi.db.query('plugin::users-permissions.role').findMany({
        limit: pageSize,
        offset,
        orderBy: { name: 'asc' },
      }),
      strapi.db.query('plugin::users-permissions.role').count(),
    ]);

    ctx.status = 200;
    ctx.body = {
      results,
      pagination: {
        page,
        pageSize,
        pageCount: Math.ceil(total / pageSize),
        total,
      },
    };
  };
};
