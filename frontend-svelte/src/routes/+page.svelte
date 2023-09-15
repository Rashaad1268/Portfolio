<script lang="ts">
	import ProjectsGrid from '../lib/components/projectsGrid.svelte';
	import SportsSection from '../lib/components/sportsSection.svelte';
	import TechnologiesGrid from '../lib/components/technologiesGrid.svelte';
</script>

<div class="section mt-5" id="intro">
	<div class="img-section">
		<div>
			<span class="hover-underline break-elements-onwrap text-6xl">
				<span class="name-gradient font-semibold">Rashaad</span>
				is the name
			</span>
			<p class="my-2 text-3xl">
				I'm ahead of my <span
					class="bg-gradient-to-r from-cyan-500 to-sky-500 bg-clip-text font-bold text-transparent"
					>game</span
				>
			</p>
		</div>

		<img
			src="/my_photo.jpeg"
			alt="A pic of me"
			draggable="false"
			class="w-64 rounded-md object-contain md:ml-auto"
		/>
	</div>
</div>

<div class="section" id="projects">
	<h1 class="title-text" id="projects">Projects</h1>
	<ProjectsGrid />
</div>

<div class="section" id="technologies">
	<h1 class="title-text">Technologies I know</h1>

	<TechnologiesGrid />
</div>

<div class="section" id="sports">
	<h1 class="title-text">Sports</h1>
	<div class="flex flex-row justify-evenly">
		<SportsSection />

		<div>
			<h1
				class="bg-gradient-to-r from-emerald-400 via-green-500 to-teal-500 bg-clip-text text-center text-3xl font-semibold text-transparent"
			>
				I like to play Basketball, Football and Chess
			</h1>
		</div>
	</div>
</div>

<style lang="postcss">
	.section {
		@apply mx-5 flex min-h-[80vh] flex-col items-start rounded-lg sm:mx-10 lg:mx-20;
	}

	.img-section {
		@apply flex w-full flex-col items-start rounded-lg md:flex-row md:items-center;
	}

	.break-elements-onwrap {
		@apply flex flex-wrap gap-2 break-keep sm:inline;
	}

	.title-text {
		@apply hover-underline my-10 text-6xl font-semibold;
	}

	.name-gradient {
		@apply bg-gradient-to-br from-pink-600 to-yellow-500 bg-clip-text text-transparent;
	}

	.hover-underline {
		/* display: inline-block; */
		background-image: linear-gradient(90deg, rgb(253, 100, 49), orange);
		background-size: 0% 3px;
		background-repeat: no-repeat;
		background-position: left bottom;

		transition: background-size 400ms ease;
	}

	@media screen(sm) {
		.hover-underline:hover {
			background-size: 100% 3px;
		}
	}
</style>
