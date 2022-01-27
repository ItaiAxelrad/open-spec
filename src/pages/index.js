import React from 'react';
import Layout from '@theme/Layout';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import HomepageHeader from '../components/HomepageHeader';

export default function Home() {
  const { siteConfig } = useDocusaurusContext();
  return (
    <Layout title={siteConfig.title} description='Open source specifications'>
      <HomepageHeader />
      <main></main>
    </Layout>
  );
}
