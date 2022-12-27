<script>
	import '../app.css';
	import NavBar from './navBar.svelte';
	import Footer from './footer.svelte';
</script>

<svelte:head>
	<title>Rashaad • Portfolio</title>
</svelte:head>

<NavBar />

<!-- Subtract the navbar height (96x) from 100vh -->
<main class="min-h-[calc(100vh-var(--navbar-height))]">
	<slot />
</main>

<Footer />
