<script lang="ts">
	import { technologiesData } from '$lib/data';

	const technologyCardOffset = -40;
</script>

<div class="technology-grid">
	{#each technologiesData as technology, index}
		<div
			class="technology-card"
			style="--card-index: {index}; --translate-x-value: {index * technologyCardOffset}px"
		>
			{@html technology.icon}
			<p class="py-2 text-center font-mono text-2xl">{technology.name}</p>
			<p class="text-center font-mono leading-5 tracking-tight">
				{technology.description}
			</p>
		</div>
	{/each}
</div>

<style lang="postcss">
	.technology-card {
		@apply z-[var(--card-index)] mb-[5px] flex min-w-[240px] translate-x-[var(--translate-x-value)] flex-col items-center
              justify-start border border-neutral-900 bg-zinc-800 p-4
              shadow-[-3rem_0_5rem_-3rem_#000] transition-all delay-[10ms]

              hover:z-50 hover:-translate-y-1 hover:shadow-[-2rem_0_5rem_-3rem_#000];
	}

	.technology-card:nth-child(even) {
		@apply bg-neutral-800;
	}

	:global(.technology-card > svg) {
		@apply h-[100px] w-[100px] fill-white grayscale;
	}

	:global(.technology-card:hover > svg) {
		@apply grayscale-0;
	}

	.technology-grid {
		@apply flex w-[90vw] overflow-x-scroll p-4;
	}

	.technology-grid::-webkit-scrollbar {
		@apply h-2;
	}

	.technology-grid::-webkit-scrollbar-thumb {
		@apply rounded-md bg-zinc-700;
	}
</style>
