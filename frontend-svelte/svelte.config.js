import vercel from '@sveltejs/adapter-vercel';
import preprocess from 'svelte-preprocess';
import { dirname, join } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://github.com/sveltejs/svelte-preprocess
	// for more information about preprocessors
	preprocess: preprocess({
		postcss: {
			configFilePath: join(__dirname, 'postcss.config.cjs')
		},
		scss: true
	}),

	kit: {
		adapter: vercel({
			edge: false, // Vercel edge functions

			// an array of dependencies that esbuild should treat
			// as external when bundling functions
			external: [],

			// if true, will split your app into multiple functions
			// instead of creating a single one for the entire app
			split: false
		})
	}
};

export default config;
