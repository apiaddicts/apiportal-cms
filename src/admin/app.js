import React from 'react';
import { Button } from '@strapi/design-system';
import { useFetchClient, useNotification } from '@strapi/admin/strapi-admin';

export default {
  bootstrap(app) {
    app.getPlugin('content-manager').injectComponent('editView', 'right-links', {
      name: 'sync-integrator-button',
      Component: () => {
        const { post } = useFetchClient();

        const notification = useNotification();
        const toggleNotification = notification.toggleNotification || notification.displayNotification || notification;

        const [isLoading, setIsLoading] = React.useState(false);

        const pathname = globalThis.location.pathname;
        const isApimConfig = pathname.includes('api::apim-config.apim-config');

        const urlParts = pathname.split('/');
        const documentId = urlParts.at(-1);
        const isCreating = pathname.includes('create');

        if (!isApimConfig || isCreating || documentId === 'api::apim-config.apim-config') {
          return null;
        }

        const handleSync = async (e) => {
          if (e) e.preventDefault();
          if (isLoading) return;

          setIsLoading(true);

          try {
            await post(`/api/apim-configs/${documentId}/sync`);

            if (typeof toggleNotification === 'function') {
              toggleNotification({
                type: 'success',
                message: 'Synchronization completed successfully',
                timeout: 5000,
              });
            }

            setTimeout(() => {
              globalThis.location.href = `/admin/content-manager/collection-types/api::library-api.library-api`;
            }, 2000);

          } catch (err) {
            console.error('Sync Error:', err);

            if (typeof toggleNotification === 'function') {
              toggleNotification({
                type: 'danger',
                message: `Sync failed: ${err.response?.data?.error?.message || err.message}`,
                timeout: 5000,
              });
            }
          } finally {
            setIsLoading(false);
          }
        };

        return React.createElement(
          Button,
          {
            variant: 'secondary',
            fullWidth: true,
            loading: isLoading,
            disabled: isLoading,
            onClick: handleSync,
            style: { marginTop: '10px' }
          },
          'Sync APIs'
        );
      },
    });
  },
};