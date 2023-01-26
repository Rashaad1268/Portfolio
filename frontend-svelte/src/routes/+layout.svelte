<script>
	import { browser } from "$app/environment";
	import { page } from "$app/stores";
	import { webVitals } from "$lib/vitals";
	import { inject } from "@vercel/analytics";
	import { onMount } from "svelte";

	import "../app.css";
	import Footer from "./footer.svelte";
	import NavBar from "./navBar.svelte";



	let analyticsId = import.meta.env.VERCEL_ANALYTICS_ID;
	$: console.log(analyticsId)

	$: if (browser && analyticsId) {
	    webVitals({
    		path: $page.url.pathname,
     	 	params: $page.params,
      		analyticsId
    	})
	}


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
