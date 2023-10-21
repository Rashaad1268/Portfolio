<script lang="ts">
  import { projectsData } from "../lib/data";
  import { fly } from "svelte/transition";
  import ProjectCard from "./projectCard.svelte";

  let collapsed = true;

  $: projects = collapsed ? projectsData.slice(0, 6) : projectsData;
</script>

<div class="projects-container">
  <div class="projects-grid">
    {#each projects as project}
      <ProjectCard project={project} />
    {/each}
  </div>

  <button
    class="collapse-button"
    class:animate-bounce={collapsed}
    on:click={() => (collapsed = !collapsed)}
  >
    {#if collapsed}
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="16"
        height="16"
        fill="currentColor"
        class="bi bi-arrow-down"
        viewBox="0 0 16 16"
        in:fly
      >
        <path
          fill-rule="evenodd"
          d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"
        />
      </svg>
    {:else}
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="16"
        height="16"
        fill="currentColor"
        class="bi bi-arrow-up"
        viewBox="0 0 16 16"
        in:fly
      >
        <path
          fill-rule="evenodd"
          d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"
        />
      </svg>
    {/if}
  </button>
</div>

<style lang="postcss">
  .projects-container {
    @apply flex w-full flex-col gap-5;
  }
  .projects-grid {
    @apply grid w-full grid-cols-2 gap-5 sm:grid-cols-3;
  }

  .collapse-button {
    @apply self-center rounded-full border-[4px] border-zinc-800 p-3;
  }
</style>
