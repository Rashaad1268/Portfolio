import type { ProjectInterface, TechnologyInterface } from './types';

export const projectsData: ProjectInterface[] = [
	{
		name: 'Gamerz.lk',
		description: 'A website made for local gamers to connect',
		githubUrl: 'https://github.com/Rashaad1268/Gamerz.lk',
		tags: ['Gaming', 'Social Media', 'SvelteKit', 'Django']
	},
	{
		name: 'Flettx Chat',
		description: 'A chat app which made using Rust and Svelte',
		githubUrl: 'https://github.com/Flettex/flettex-chat',
		tags: ['Rust', 'SvelteKit', 'WebSockets', 'Chat App']
	},
	{
		name: 'Yeeter',
		description: 'A twitter clone',
		githubUrl: 'https://github.com/Rashaad1268/Yeeter',
		tags: ['Twitter', 'Social Media', 'Flutter', 'Django']
	},
	{
		name: 'Rectilearn',
		description: 'A website I made with my friends which aims to make studying less ordinary',
		githubUrl: 'https://github.com',
		websiteUrl: 'https://github.com/Sanyok6/rectilearn',
		tags: ['Education', 'Web Games', 'FastAPI', 'Next.JS']
	},
	{
		name: 'Chat App',
		description: 'A chat app made using Django and Flutter',
		githubUrl: 'https://github.com/Rashaad1268/Chat-app',
		tags: ['Social Media', 'WebSockets', 'Flutter', 'Django', 'Django-Channels']
	},
	{
		name: 'ChessTopia',
		description: 'A chess website made for the Python Discord Code Jam 2022',
		githubUrl: 'https://github.com/Sanyok6/ChessTopia',
		tags: ['Chess', 'WebSockets', 'SvelteKit', 'Django', 'Django-Channels']
	},
	{
		name: 'StonkFish',
		description: 'A chess engine',
		githubUrl: 'https://github.com/Rashaad1268/StonkFish',
		tags: ['Chess', 'Python', 'Chess Engine']
	},
	{
		name: 'YouTube Clone',
		description: 'A YouTube clone I made using Django',
		githubUrl: 'https://github.com/Rashaad1268/YouTube-clone',
		tags: ['YouTube', 'Django', 'Social Media', 'BootstrapCSS']
	},
	{
		name: 'Backend Framework Comparision',
		description:
			'A project which aims to compare the developer experience of difference backend frameworks',
		githubUrl: 'https://github.com/Rashaad1268/Backend-framework-comparision',
		tags: ['Backend Frameworks', 'Comparision']
	},
	{
		name: 'Malakada (මලකඩ)',
		description: 'Rust programming in Sinhala',
		githubUrl: 'https://github.com/Rashaad1268/Malakada',
		tags: ['Rust', 'Sinhala']
	},
	{
		name: 'PgOrm',
		description: 'An ORM for PostgresSQL written in python',
		githubUrl: 'https://github.com/Rashaad1268/PostgreSQL-Python-ORM',
		tags: ['PostgreSQL', 'Python', 'ORM']
	},
];

export const technologiesData: TechnologyInterface[] = [
	{
		name: "Python",
		description: `I am proficient in Python. I have worked with a wide
		range of modules like django, scikit-learn, numpy and more`,
		icon: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M439.8 200.5c-7.7-30.9-22.3-54.2-53.4-54.2h-40.1v47.4c0 36.8-31.2 67.8-66.8 67.8H172.7c-29.2 0-53.4 25-53.4 54.3v101.8c0 29 25.2 46 53.4 54.3 33.8 9.9 66.3 11.7 106.8 0 26.9-7.8 53.4-23.5 53.4-54.3v-40.7H226.2v-13.6h160.2c31.1 0 42.6-21.7 53.4-54.2 11.2-33.5 10.7-65.7 0-108.6zM286.2 404c11.1 0 20.1 9.1 20.1 20.3 0 11.3-9 20.4-20.1 20.4-11 0-20.1-9.2-20.1-20.4.1-11.3 9.1-20.3 20.1-20.3zM167.8 248.1h106.8c29.7 0 53.4-24.5 53.4-54.3V91.9c0-29-24.4-50.7-53.4-55.6-35.8-5.9-74.7-5.6-106.8.1-45.2 8-53.4 24.7-53.4 55.6v40.7h106.9v13.6h-147c-31.1 0-58.3 18.7-66.8 54.2-9.8 40.7-10.2 66.1 0 108.6 7.6 31.6 25.7 54.2 56.8 54.2H101v-48.8c0-35.3 30.5-66.4 66.8-66.4zm-6.7-142.6c-11.1 0-20.1-9.1-20.1-20.3.1-11.3 9-20.4 20.1-20.4 11 0 20.1 9.2 20.1 20.4s-9 20.3-20.1 20.3z"/></svg>`,
	},
	{
		name: "Rust",
		description: "I can make soild backends using Rust's Actix Web framework",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M508.52,249.75,486.7,236.24c-.17-2-.34-3.93-.55-5.88l18.72-17.5a7.35,7.35,0,0,0-2.44-12.25l-24-9c-.54-1.88-1.08-3.78-1.67-5.64l15-20.83a7.35,7.35,0,0,0-4.79-11.54l-25.42-4.15c-.9-1.73-1.79-3.45-2.73-5.15l10.68-23.42a7.35,7.35,0,0,0-6.95-10.39l-25.82.91q-1.79-2.22-3.61-4.4L439,81.84A7.36,7.36,0,0,0,430.16,73L405,78.93q-2.17-1.83-4.4-3.61l.91-25.82a7.35,7.35,0,0,0-10.39-7L367.7,53.23c-1.7-.94-3.43-1.84-5.15-2.73L358.4,25.08a7.35,7.35,0,0,0-11.54-4.79L326,35.26c-1.86-.59-3.75-1.13-5.64-1.67l-9-24a7.35,7.35,0,0,0-12.25-2.44l-17.5,18.72c-1.95-.21-3.91-.38-5.88-.55L262.25,3.48a7.35,7.35,0,0,0-12.5,0L236.24,25.3c-2,.17-3.93.34-5.88.55L212.86,7.13a7.35,7.35,0,0,0-12.25,2.44l-9,24c-1.89.55-3.79,1.08-5.66,1.68l-20.82-15a7.35,7.35,0,0,0-11.54,4.79l-4.15,25.41c-1.73.9-3.45,1.79-5.16,2.73L120.88,42.55a7.35,7.35,0,0,0-10.39,7l.92,25.81c-1.49,1.19-3,2.39-4.42,3.61L81.84,73A7.36,7.36,0,0,0,73,81.84L78.93,107c-1.23,1.45-2.43,2.93-3.62,4.41l-25.81-.91a7.42,7.42,0,0,0-6.37,3.26,7.35,7.35,0,0,0-.57,7.13l10.66,23.41c-.94,1.7-1.83,3.43-2.73,5.16L25.08,153.6a7.35,7.35,0,0,0-4.79,11.54l15,20.82c-.59,1.87-1.13,3.77-1.68,5.66l-24,9a7.35,7.35,0,0,0-2.44,12.25l18.72,17.5c-.21,1.95-.38,3.91-.55,5.88L3.48,249.75a7.35,7.35,0,0,0,0,12.5L25.3,275.76c.17,2,.34,3.92.55,5.87L7.13,299.13a7.35,7.35,0,0,0,2.44,12.25l24,9c.55,1.89,1.08,3.78,1.68,5.65l-15,20.83a7.35,7.35,0,0,0,4.79,11.54l25.42,4.15c.9,1.72,1.79,3.45,2.73,5.14L42.56,391.12a7.35,7.35,0,0,0,.57,7.13,7.13,7.13,0,0,0,6.37,3.26l25.83-.91q1.77,2.22,3.6,4.4L73,430.16A7.36,7.36,0,0,0,81.84,439L107,433.07q2.18,1.83,4.41,3.61l-.92,25.82a7.35,7.35,0,0,0,10.39,6.95l23.43-10.68c1.69.94,3.42,1.83,5.14,2.73l4.15,25.42a7.34,7.34,0,0,0,11.54,4.78l20.83-15c1.86.6,3.76,1.13,5.65,1.68l9,24a7.36,7.36,0,0,0,12.25,2.44l17.5-18.72c1.95.21,3.92.38,5.88.55l13.51,21.82a7.35,7.35,0,0,0,12.5,0l13.51-21.82c2-.17,3.93-.34,5.88-.56l17.5,18.73a7.36,7.36,0,0,0,12.25-2.44l9-24c1.89-.55,3.78-1.08,5.65-1.68l20.82,15a7.34,7.34,0,0,0,11.54-4.78l4.15-25.42c1.72-.9,3.45-1.79,5.15-2.73l23.42,10.68a7.35,7.35,0,0,0,10.39-6.95l-.91-25.82q2.22-1.79,4.4-3.61L430.16,439a7.36,7.36,0,0,0,8.84-8.84L433.07,405q1.83-2.17,3.61-4.4l25.82.91a7.23,7.23,0,0,0,6.37-3.26,7.35,7.35,0,0,0,.58-7.13L458.77,367.7c.94-1.7,1.83-3.43,2.73-5.15l25.42-4.15a7.35,7.35,0,0,0,4.79-11.54l-15-20.83c.59-1.87,1.13-3.76,1.67-5.65l24-9a7.35,7.35,0,0,0,2.44-12.25l-18.72-17.5c.21-1.95.38-3.91.55-5.87l21.82-13.51a7.35,7.35,0,0,0,0-12.5Zm-151,129.08A13.91,13.91,0,0,0,341,389.51l-7.64,35.67A187.51,187.51,0,0,1,177,424.44l-7.64-35.66a13.87,13.87,0,0,0-16.46-10.68l-31.51,6.76a187.38,187.38,0,0,1-16.26-19.21H258.3c1.72,0,2.89-.29,2.89-1.91V309.55c0-1.57-1.17-1.91-2.89-1.91H213.47l.05-34.35H262c4.41,0,23.66,1.28,29.79,25.87,1.91,7.55,6.17,32.14,9.06,40,2.89,8.82,14.6,26.46,27.1,26.46H407a187.3,187.3,0,0,1-17.34,20.09Zm25.77,34.49A15.24,15.24,0,1,1,368,398.08h.44A15.23,15.23,0,0,1,383.24,413.32Zm-225.62-.68a15.24,15.24,0,1,1-15.25-15.25h.45A15.25,15.25,0,0,1,157.62,412.64ZM69.57,234.15l32.83-14.6a13.88,13.88,0,0,0,7.06-18.33L102.69,186h26.56V305.73H75.65A187.65,187.65,0,0,1,69.57,234.15ZM58.31,198.09a15.24,15.24,0,0,1,15.23-15.25H74a15.24,15.24,0,1,1-15.67,15.24Zm155.16,24.49.05-35.32h63.26c3.28,0,23.07,3.77,23.07,18.62,0,12.29-15.19,16.7-27.68,16.7ZM399,306.71c-9.8,1.13-20.63-4.12-22-10.09-5.78-32.49-15.39-39.4-30.57-51.4,18.86-11.95,38.46-29.64,38.46-53.26,0-25.52-17.49-41.59-29.4-49.48-16.76-11-35.28-13.23-40.27-13.23H116.32A187.49,187.49,0,0,1,221.21,70.06l23.47,24.6a13.82,13.82,0,0,0,19.6.44l26.26-25a187.51,187.51,0,0,1,128.37,91.43l-18,40.57A14,14,0,0,0,408,220.43l34.59,15.33a187.12,187.12,0,0,1,.4,32.54H423.71c-1.91,0-2.69,1.27-2.69,3.13v8.82C421,301,409.31,305.58,399,306.71ZM240,60.21A15.24,15.24,0,0,1,255.21,45h.45A15.24,15.24,0,1,1,240,60.21ZM436.84,214a15.24,15.24,0,1,1,0-30.48h.44a15.24,15.24,0,0,1-.44,30.48Z"/></svg>`,
	},
	{
		name: "TypeScript",
		description: "I am proficient in TypeScript",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 512 512" width="512"><rect fill="#3178c6" height="512" rx="50" width="512"/><rect fill="#3178c6" height="512" rx="50" width="512"/><path clip-rule="evenodd" d="m316.939 407.424v50.061c8.138 4.172 17.763 7.3 28.875 9.386s22.823 3.129 35.135 3.129c11.999 0 23.397-1.147 34.196-3.442 10.799-2.294 20.268-6.075 28.406-11.342 8.138-5.266 14.581-12.15 19.328-20.65s7.121-19.007 7.121-31.522c0-9.074-1.356-17.026-4.069-23.857s-6.625-12.906-11.738-18.225c-5.112-5.319-11.242-10.091-18.389-14.315s-15.207-8.213-24.18-11.967c-6.573-2.712-12.468-5.345-17.685-7.9-5.217-2.556-9.651-5.163-13.303-7.822-3.652-2.66-6.469-5.476-8.451-8.448-1.982-2.973-2.974-6.336-2.974-10.091 0-3.441.887-6.544 2.661-9.308s4.278-5.136 7.512-7.118c3.235-1.981 7.199-3.52 11.894-4.615 4.696-1.095 9.912-1.642 15.651-1.642 4.173 0 8.581.313 13.224.938 4.643.626 9.312 1.591 14.008 2.894 4.695 1.304 9.259 2.947 13.694 4.928 4.434 1.982 8.529 4.276 12.285 6.884v-46.776c-7.616-2.92-15.937-5.084-24.962-6.492s-19.381-2.112-31.066-2.112c-11.895 0-23.163 1.278-33.805 3.833s-20.006 6.544-28.093 11.967c-8.086 5.424-14.476 12.333-19.171 20.729-4.695 8.395-7.043 18.433-7.043 30.114 0 14.914 4.304 27.638 12.912 38.172 8.607 10.533 21.675 19.45 39.204 26.751 6.886 2.816 13.303 5.579 19.25 8.291s11.086 5.528 15.415 8.448c4.33 2.92 7.747 6.101 10.252 9.543 2.504 3.441 3.756 7.352 3.756 11.733 0 3.233-.783 6.231-2.348 8.995s-3.939 5.162-7.121 7.196-7.147 3.624-11.894 4.771c-4.748 1.148-10.303 1.721-16.668 1.721-10.851 0-21.597-1.903-32.24-5.71-10.642-3.806-20.502-9.516-29.579-17.13zm-84.159-123.342h64.22v-41.082h-179v41.082h63.906v182.918h50.874z" fill="#fff" fill-rule="evenodd"/></svg>`,
	},
	{
		name: "Relational Databases",
		description: "I have worked with PostgreSQL and SQLite dayabases",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M448 80v48c0 44.2-100.3 80-224 80S0 172.2 0 128V80C0 35.8 100.3 0 224 0S448 35.8 448 80zM393.2 214.7c20.8-7.4 39.9-16.9 54.8-28.6V288c0 44.2-100.3 80-224 80S0 332.2 0 288V186.1c14.9 11.8 34 21.2 54.8 28.6C99.7 230.7 159.5 240 224 240s124.3-9.3 169.2-25.3zM0 346.1c14.9 11.8 34 21.2 54.8 28.6C99.7 390.7 159.5 400 224 400s124.3-9.3 169.2-25.3c20.8-7.4 39.9-16.9 54.8-28.6V432c0 44.2-100.3 80-224 80S0 476.2 0 432V346.1z"/></svg>`,
	},
	{
		name: "Dart & Flutter",
		description: "I am proficient in Dart and I have experience in the Flutter framework",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="logo_vector" data-name="logo vector" viewBox="0 0 300 371.43"><defs><style>.cls-1{fill:none;}.cls-2{clip-path:url(#clip-path);}.cls-3{isolation:isolate;opacity:0.2;}.cls-4{fill:#54c5f8;}.cls-5{fill:#01579b;}.cls-6{fill:url(#linear-gradient);}.cls-7{fill:#29b6f6;}.cls-8{fill:url(#radial-gradient);}</style><clipPath id="clip-path"><path class="cls-1" d="M300,171.43l-100,100,100,100H185.72l-42.86-42.86h0L85.71,271.42l100-100ZM185.72,0,0,185.72l57.15,57.15L300,0Z"/></clipPath><linearGradient id="linear-gradient" x1="6254.1" y1="5576.56" x2="6424.34" y2="5406.31" gradientTransform="translate(-1404 -1054.53) scale(0.25)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#1a237e" stop-opacity="0.4"/><stop offset="1" stop-color="#1a237e" stop-opacity="0"/></linearGradient><radialGradient id="radial-gradient" cx="5649.77" cy="4319.41" r="1817.72" gradientTransform="translate(-1404 -1054.53) scale(0.25)" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#fff" stop-opacity="0.1"/><stop offset="1" stop-color="#fff" stop-opacity="0"/></radialGradient></defs><g class="cls-2"><image class="cls-3" width="125" height="97" transform="translate(67.54 154.53) scale(2.14)" xlink:href="data:image/png;base64,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"/><polygon class="cls-4" points="300 171.43 300 171.43 300 171.43 185.72 171.43 85.73 271.44 142.85 328.57 300 171.43"/></g><g class="cls-2"><polygon class="cls-4" points="57.15 242.87 0 185.72 185.72 0 300 0 57.15 242.87"/></g><g class="cls-2"><polygon class="cls-5" points="142.85 328.57 185.72 371.44 300 371.44 300 371.44 200.01 271.44 142.85 328.57"/></g><g class="cls-2"><polygon class="cls-6" points="142.85 328.57 227.61 299.24 200.01 271.44 142.85 328.57"/></g><g class="cls-2"><rect class="cls-7" x="102.45" y="231.03" width="80.81" height="80.81" transform="translate(-150.09 180.52) rotate(-45)"/></g><path class="cls-8" d="M300,171.43l-100,100,100,100H185.72l-42.86-42.86h0L85.71,271.42l100-100ZM185.72,0,0,185.72l57.15,57.15L300,0Z"/></svg>`,
	},
	{
		name: "Svelte & SvleteKit",
		description: "I can create websites using Svelte",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 98.1 118" style="enable-background:new 0 0 98.1 118;" xml:space="preserve"><path fill="#FF3E00" d="M91.8,15.6C80.9-0.1,59.2-4.7,43.6,5.2L16.1,22.8C8.6,27.5,3.4,35.2,1.9,43.9c-1.3,7.3-0.2,14.8,3.3,21.3  c-2.4,3.6-4,7.6-4.7,11.8c-1.6,8.9,0.5,18.1,5.7,25.4c11,15.7,32.6,20.3,48.2,10.4l27.5-17.5c7.5-4.7,12.7-12.4,14.2-21.1  c1.3-7.3,0.2-14.8-3.3-21.3c2.4-3.6,4-7.6,4.7-11.8C99.2,32.1,97.1,22.9,91.8,15.6"/><path fill="#FFFFFF" d="M40.9,103.9c-8.9,2.3-18.2-1.2-23.4-8.7c-3.2-4.4-4.4-9.9-3.5-15.3c0.2-0.9,0.4-1.7,0.6-2.6l0.5-1.6l1.4,1  c3.3,2.4,6.9,4.2,10.8,5.4l1,0.3l-0.1,1c-0.1,1.4,0.3,2.9,1.1,4.1c1.6,2.3,4.4,3.4,7.1,2.7c0.6-0.2,1.2-0.4,1.7-0.7L65.5,72  c1.4-0.9,2.3-2.2,2.6-3.8c0.3-1.6-0.1-3.3-1-4.6c-1.6-2.3-4.4-3.3-7.1-2.6c-0.6,0.2-1.2,0.4-1.7,0.7l-10.5,6.7  c-1.7,1.1-3.6,1.9-5.6,2.4c-8.9,2.3-18.2-1.2-23.4-8.7c-3.1-4.4-4.4-9.9-3.4-15.3c0.9-5.2,4.1-9.9,8.6-12.7l27.5-17.5  c1.7-1.1,3.6-1.9,5.6-2.5c8.9-2.3,18.2,1.2,23.4,8.7c3.2,4.4,4.4,9.9,3.5,15.3c-0.2,0.9-0.4,1.7-0.7,2.6l-0.5,1.6l-1.4-1  c-3.3-2.4-6.9-4.2-10.8-5.4l-1-0.3l0.1-1c0.1-1.4-0.3-2.9-1.1-4.1c-1.6-2.3-4.4-3.3-7.1-2.6c-0.6,0.2-1.2,0.4-1.7,0.7L32.4,46.1  c-1.4,0.9-2.3,2.2-2.6,3.8s0.1,3.3,1,4.6c1.6,2.3,4.4,3.3,7.1,2.6c0.6-0.2,1.2-0.4,1.7-0.7l10.5-6.7c1.7-1.1,3.6-1.9,5.6-2.5  c8.9-2.3,18.2,1.2,23.4,8.7c3.2,4.4,4.4,9.9,3.5,15.3c-0.9,5.2-4.1,9.9-8.6,12.7l-27.5,17.5C44.8,102.5,42.9,103.3,40.9,103.9"/></svg>`,
	},
	{
		name: "React.js & Next.js",
		description: "I can create websites using React.js",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="-11.5 -10.23174 23 20.46348"><circle cx="0" cy="0" r="2.05" fill="#61dafb"/><g stroke="#61dafb" stroke-width="1" fill="none"><ellipse rx="11" ry="4.2"/><ellipse rx="11" ry="4.2" transform="rotate(60)"/><ellipse rx="11" ry="4.2" transform="rotate(120)"/></g></svg>`,
	},
	{
		name: "C#",
		description: "I can create games using C# and Unity",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid" viewBox="0 -1.428 255.582 290.108"><path d="m255.569 84.452c-.002-4.83-1.035-9.098-3.124-12.76-2.052-3.603-5.125-6.622-9.247-9.009-34.025-19.619-68.083-39.178-102.097-58.817-9.17-5.294-18.061-5.1-27.163.27-13.543 7.986-81.348 46.833-101.553 58.536-8.321 4.818-12.37 12.19-12.372 21.771-.013 39.455 0 78.91-.013 118.365 0 4.724.991 8.91 2.988 12.517 2.053 3.711 5.169 6.813 9.386 9.254 20.206 11.703 88.02 50.547 101.56 58.536 9.106 5.373 17.997 5.565 27.17.27 34.015-19.64 68.075-39.199 102.105-58.818 4.217-2.44 7.333-5.544 9.386-9.252 1.994-3.608 2.987-7.793 2.987-12.518 0 0 0-78.889-.013-118.345" fill="#a179dc"/><path d="m128.182 143.241-125.194 72.084c2.053 3.711 5.169 6.813 9.386 9.254 20.206 11.703 88.02 50.547 101.56 58.536 9.106 5.373 17.997 5.565 27.17.27 34.015-19.64 68.075-39.199 102.105-58.818 4.217-2.44 7.333-5.544 9.386-9.252z" fill="#280068"/><path d="m255.569 84.452c-.002-4.83-1.035-9.098-3.124-12.76l-124.263 71.55 124.413 72.073c1.994-3.608 2.985-7.793 2.987-12.518 0 0 0-78.889-.013-118.345" fill="#390091"/><g fill="#fff"><path d="m201.892 116.294v13.474h13.474v-13.474h6.737v13.474h13.474v6.737h-13.474v13.473h13.474v6.737h-13.474v13.474h-6.737v-13.474h-13.474v13.474h-6.737v-13.474h-13.473v-6.737h13.473v-13.473h-13.473v-6.737h13.473v-13.474zm13.474 20.21h-13.474v13.474h13.474z"/><path d="m128.457 48.626c35.144 0 65.827 19.086 82.262 47.456l-.16-.273-41.35 23.808c-8.146-13.793-23.08-23.102-40.213-23.294l-.54-.003c-26.125 0-47.305 21.18-47.305 47.305a47.08 47.08 0 0 0 6.239 23.47c8.154 14.235 23.483 23.836 41.067 23.836 17.693 0 33.109-9.723 41.221-24.11l-.197.345 41.287 23.918c-16.255 28.13-46.518 47.157-81.253 47.536l-1.058.006c-35.255 0-66.025-19.204-82.419-47.724-8.003-13.923-12.582-30.064-12.582-47.277 0-52.466 42.532-95 95-95z"/></g></svg>`,
	},
	{
		name: "Java",
		description: "I have some experience in Java",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M277.74 312.9c9.8-6.7 23.4-12.5 23.4-12.5s-38.7 7-77.2 10.2c-47.1 3.9-97.7 4.7-123.1 1.3-60.1-8 33-30.1 33-30.1s-36.1-2.4-80.6 19c-52.5 25.4 130 37 224.5 12.1zm-85.4-32.1c-19-42.7-83.1-80.2 0-145.8C296 53.2 242.84 0 242.84 0c21.5 84.5-75.6 110.1-110.7 162.6-23.9 35.9 11.7 74.4 60.2 118.2zm114.6-176.2c.1 0-175.2 43.8-91.5 140.2 24.7 28.4-6.5 54-6.5 54s62.7-32.4 33.9-72.9c-26.9-37.8-47.5-56.6 64.1-121.3zm-6.1 270.5a12.19 12.19 0 0 1-2 2.6c128.3-33.7 81.1-118.9 19.8-97.3a17.33 17.33 0 0 0-8.2 6.3 70.45 70.45 0 0 1 11-3c31-6.5 75.5 41.5-20.6 91.4zM348 437.4s14.5 11.9-15.9 21.2c-57.9 17.5-240.8 22.8-291.6.7-18.3-7.9 16-19 26.8-21.3 11.2-2.4 17.7-2 17.7-2-20.3-14.3-131.3 28.1-56.4 40.2C232.84 509.4 401 461.3 348 437.4zM124.44 396c-78.7 22 47.9 67.4 148.1 24.5a185.89 185.89 0 0 1-28.2-13.8c-44.7 8.5-65.4 9.1-106 4.5-33.5-3.8-13.9-15.2-13.9-15.2zm179.8 97.2c-78.7 14.8-175.8 13.1-233.3 3.6 0-.1 11.8 9.7 72.4 13.6 92.2 5.9 233.8-3.3 237.1-46.9 0 0-6.4 16.5-76.2 29.7zM260.64 353c-59.2 11.4-93.5 11.1-136.8 6.6-33.5-3.5-11.6-19.7-11.6-19.7-86.8 28.8 48.2 61.4 169.5 25.9a60.37 60.37 0 0 1-21.1-12.8z"/></svg>`,
	},
	{
		name: "Data Science",
		description: "I have worked with data science libraries like Numpy, Pandas, Scipy and more",
		icon: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M392.8 1.2c-17-4.9-34.7 5-39.6 22l-128 448c-4.9 17 5 34.7 22 39.6s34.7-5 39.6-22l128-448c4.9-17-5-34.7-22-39.6zm80.6 120.1c-12.5 12.5-12.5 32.8 0 45.3L562.7 256l-89.4 89.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l112-112c12.5-12.5 12.5-32.8 0-45.3l-112-112c-12.5-12.5-32.8-12.5-45.3 0zm-306.7 0c-12.5-12.5-32.8-12.5-45.3 0l-112 112c-12.5 12.5-12.5 32.8 0 45.3l112 112c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L77.3 256l89.4-89.4c12.5-12.5 12.5-32.8 0-45.3z"/></svg>`,
	},
]

export const twitterUrl = 'https://twitter.com/RashaadAkbar';
export const githubUrl = 'https://github.com/Rashaad1268';
export const youtubeUrl = 'https://www.youtube.com/@rashaadakbar';
export const discordServerUrl = 'https://discord.gg/EEK6wBRpQb';

export const sourceCodeUrl = 'https://github.com/Rashaad1268/Portfolio';
export const flutterPortfolioUrl = 'https://rashaad1268.github.io/Portfolio/#/';
