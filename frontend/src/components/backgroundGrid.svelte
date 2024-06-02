<script lang="ts">
  import { onMount } from "svelte";

  let size = 0;
  let columns = 0;
  let rows = 0;

  const createGrid = () => {
    size = document.body.clientWidth > 800 ? 100 : 50;

    columns = Math.floor((document.body.clientWidth - 64) / size); // subtract the height of the navbar (64px)
    rows = Math.floor(document.body.clientHeight / size);
  };

  onMount(createGrid);
</script>

<svelte:window on:resize={createGrid} />

<!-- Only show the grid when the rows and columns are calculated -->
{#if columns > 0 && rows > 0}
  <div id="tiles-wrapper" style="--columns: {columns}; --rows: {rows}">
    <div id="tiles">
      {#each Array(rows * columns) as _, index (index)}
        <div class="tile" />
      {/each}
    </div>
  </div>
{/if}

<style lang="scss">
  #tiles-wrapper {
    height: calc(100vh - var(--navbar-height));
    overflow: hidden;
    width: 100vw;
    max-width: 100%;
    // z-index: -1;
    filter: blur(0.5px);
    opacity: 0.9;

    animation: background-pan 9s infinite;
    animation-timing-function: linear;

    background: linear-gradient(
      to bottom,
      theme("colors.green.400"),
      var(--background-color),
      var(--background-color),
      var(--background-color),
      theme("colors.green.400")
    );
    /* width height*/
    background-size: 100% 200%;
  }

  @keyframes background-pan {
    from {
      background-position: 100% 200%;
    }
    to {
      background-position: 100% -200%;
    }
  }

  #tiles {
    height: 100%;
    width: 100%;
    max-width: 100%;

    position: relative;

    display: grid;
    grid-template-columns: repeat(var(--columns), 1fr);
    grid-template-rows: repeat(var(--rows), 1fr);

    background: linear-gradient(
      to bottom,
      transparent,
      var(--background-color) 92%
    );
    background: linear-gradient(
      to bottom,
      transparent,
      var(--background-color) 92%
    );
  }

  .tile {
    position: relative;

    &:before {
      background-color: var(--background-color);
      content: "";
      inset: 0.5px;
      position: absolute;
    }
  }
</style>
