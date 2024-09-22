import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import tailwind from "@astrojs/tailwind";
import svelte from "@astrojs/svelte";

import vercelStatic from "@astrojs/vercel/static";


const vercelProdUrl = process.env.VERCEL_PROJECT_PRODUCTION_URL;
const deployedUrl =  vercelProdUrl ? `https://${vercelProdUrl}` : 'https://slimshady.biz'

// https://astro.build/config
export default defineConfig({
  site: deployedUrl,
  integrations: [mdx(), sitemap(), tailwind(), svelte()],
  output: "static",
  adapter: vercelStatic()
});