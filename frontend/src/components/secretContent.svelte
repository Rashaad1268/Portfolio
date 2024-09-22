<script>
    import { onMount } from "svelte";

    let showContent = false;
    export let inverse = false;

    onMount(() => {
        showContent = sessionStorage.showSecretContent === "true";
    });
</script>

{#if showContent}
    {#if !inverse}
        <slot />
    {/if}
{:else if inverse}
    <slot />
{/if}
