<script context="module">
</script>

<script>
    import "../app.css";
	import NavBar from "./navBar.svelte";
	import Footer from "./footer.svelte";
</script>

<NavBar />

<!-- Subtract the navbar height (96x) from 100vh -->
<main class="min-h-[calc(100vh-96px)]">
    <slot />
</main>

<Footer />