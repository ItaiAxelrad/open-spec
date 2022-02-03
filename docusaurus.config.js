// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'Open Spec',
  tagline: 'community driven construction specifications',
  url: 'https://open-spec.com',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.png',
  organizationName: 'ItaiAxelrad',
  projectName: 'open-spec',

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          editUrl: 'https://github.com/ItaiAxelrad/open-spec/blob/main/',
        },
        blog: {
          showReadingTime: true,
          editUrl: 'https://github.com/ItaiAxelrad/open-spec/blob/main/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
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
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
