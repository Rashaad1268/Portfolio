<script lang="ts">
    import { technologiesData } from "$lib/data";

    const technologyCardOffset = -40;
</script>

<div class="technology-grid">
    {#each technologiesData as technology, index}
        <div class="technology-card" style="--card-index: {index}; --translate-x-value: {index*technologyCardOffset}px">
            {@html technology.icon}
            <p class="text-2xl font-[jetbrains-mono] py-2 text-center">{technology.name}</p>
            <p class="tracking-tight font-[jetbrains-mono] leading-5 text-center">{technology.description}</p>
        </div>
    {/each}
</div>

<style lang="postcss">
    .technology-card {
        @apply flex flex-col justify-start items-center min-w-[240px] bg-zinc-800 border
              border-neutral-900 shadow-[-3rem_0_5rem_-3rem_#000] p-4 mb-[5px] z-[var(--card-index)]
              transition-all delay-[10ms] translate-x-[var(--translate-x-value)]

              hover:scale-105 hover:-translate-y-1 hover:z-50 hover:shadow-[-2rem_0_5rem_-3rem_#000];

    }

    .technology-card:nth-child(even) {
        @apply bg-neutral-800;
    }

    :global(.technology-card > svg) {
        @apply h-[100px] w-[100px] fill-white grayscale;
    }

    :global(.technology-card:hover > svg) {
        @apply grayscale-0
    }

    .technology-grid {
        @apply flex overflow-x-scroll w-[90vw] p-4 ;
    }

    .technology-grid::-webkit-scrollbar {
        /* Don't this or the other styles won't work for some reason ¯\_(ツ)_/¯ */
        @apply h-2;
    }

    .technology-grid::-webkit-scrollbar-thumb {
        @apply bg-zinc-700 rounded-md;
    }

</style>