import { mergeConfig } from 'vite';
import monacoEditorPlugin from 'vite-plugin-monaco-editor';

export default (config) => {
  return mergeConfig(config, {
    plugins: [monacoEditorPlugin({})],
  });
};
