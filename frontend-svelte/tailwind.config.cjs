const plugin = require('tailwindcss/plugin');

const globalDarkPlugin = plugin(({ addVariant, e }) => {
	/*
    https://www.npmjs.com/package/tailwindcss-global-dark
    I had issues importing this plugin, so I copied the source code here
  */
	addVariant('gdark', ({ container, separator }) => {
		container.walkRules((rule) => {
			const className = rule.selector.slice(1);
			rule.selector = `:global(.dark) .${e(`gdark${separator}${className}`)}`;
		});
	});
});

/** @type {import('tailwindcss').Config} */
module.exports = {
	content: ['./src/**/*.{html,js,svelte,ts}'],
	darkMode: 'class',
	theme: {
		extend: {}
	},
	plugins: [globalDarkPlugin]
};
