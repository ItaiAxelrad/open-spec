import type { SidebarsConfig } from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  docs: [
    'specifications',
    {
      type: 'autogenerated',
      dirName: 'specifications',
    },
  ],
  standards: [
    'standards',
    {
      type: 'autogenerated',
      dirName: 'standards',
    },
  ],
  guides: [
    'guides',
    {
      type: 'autogenerated',
      dirName: 'guides',
    },
  ],
  checklists: [
    'checklists',
    {
      type: 'autogenerated',
      dirName: 'checklists',
    },
  ],
  lisp: [
    'lisp',
    {
      type: 'autogenerated',
      dirName: 'lisp',
    },
  ],
};

export default sidebars;
