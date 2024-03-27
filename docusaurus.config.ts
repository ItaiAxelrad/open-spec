import { themes as prismThemes } from 'prism-react-renderer';
import type { Config } from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'Open Spec',
  tagline: 'community driven construction specifications',
  favicon: 'img/favicon.png',
  url: 'https://open-spec.com',
  baseUrl: '/',
  organizationName: 'ItaiAxelrad',
  projectName: 'open-spec',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          editUrl: 'https://github.com/ItaiAxelrad/open-spec/blob/main/',
          showLastUpdateAuthor: true,
          showLastUpdateTime: true,
        },
        blog: {
          showReadingTime: true,
          editUrl: 'https://github.com/ItaiAxelrad/open-spec/blob/main/',
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    navbar: {
      title: 'OpenSpec',
      logo: {
        alt: 'OpenSpec Logo',
        src: 'img/favicon.png',
      },
      items: [
        {
          type: 'doc',
          docId: 'specifications',
          position: 'left',
          label: 'Specifications',
        },
        {
          type: 'docSidebar',
          sidebarId: 'standards',
          position: 'left',
          label: 'Standards',
        },
        {
          type: 'docSidebar',
          sidebarId: 'checklists',
          position: 'left',
          label: 'Checklists',
        },
        {
          type: 'docSidebar',
          sidebarId: 'lisp',
          position: 'left',
          label: 'Lisp',
        },
        {
          href: 'https://github.com/ItaiAxelrad/open-spec',
          label: 'GitHub',
          position: 'right',
          className: 'header-github-link',
          'aria-label': 'GitHub repository',
        },
      ],
    },
    footer: {
      style: 'dark',
      copyright: `Copyright © ${new Date().getFullYear()} OpenSpec`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
