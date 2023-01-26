<script>
	import {onMount} from "svelte";
	import '../app.css';
	import NavBar from './navBar.svelte';
	import Footer from './footer.svelte';

	import { inject } from '@vercel/analytics';


	onMount(() => {
		inject();
	});
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
