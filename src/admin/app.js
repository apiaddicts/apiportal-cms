export default {
  config: {},
  bootstrap(app) {
    app.addMenuLink({
      to: '/gaia-x',
      icon: () => '🛡️',
      intlLabel: {
        id: 'gaia-x.menu.label',
        defaultMessage: 'Gaia-X Validator',
      },
      Component: async () => {
        const { default: Page } = await import('./extensions/gaia-x/pages/App');
        return Page;
      },
      permissions: [],
    });
  },
};
