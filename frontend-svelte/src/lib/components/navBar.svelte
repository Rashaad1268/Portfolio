<script lang="ts">
	import NavTitle from '$lib/components/navTitle.svelte';
	import { page } from '$app/stores';
	import { Disclosure, DisclosureButton, DisclosurePanel } from '@rgossiaux/svelte-headlessui';
	import { slide } from 'svelte/transition';

	const navigation = [
		{ name: 'Introduction', href: '#intro' },
		{ name: 'Projects', href: '#projects' },
		{ name: 'Technologies', href: '#technologies' },
		{ name: 'Sports', href: '#sports' }
	];

	function classNames(...classes: string[]) {
		return classes.filter(Boolean).join(' ');
	}
</script>

<Disclosure
	as="nav"
	class="sticky left-0 right-0 top-0 z-[9999] h-[var(--navbar-height)] bg-neutral-800"
	let:open
>
	<div class="max-w-7xl px-2 sm:px-6 lg:px-8">
		<div class="relative flex h-16 items-center justify-between">
			<div class="r-0 absolute inset-y-0 flex items-center sm:hidden">
				<!-- Mobile menu button -->
				<DisclosureButton
					class="inline-flex items-center justify-center rounded-md p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"
				>
					<span class="sr-only">Open main menu</span>
					{#if open}
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" fill="white" height="24px"
							><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path
								d="M310.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L160 210.7 54.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L114.7 256 9.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L160 301.3 265.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L205.3 256 310.6 150.6z"
							/></svg
						>
					{:else}
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" fill="white" height="24px"
							><!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path
								d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z"
							/></svg
						>
					{/if}
				</DisclosureButton>
			</div>
			<div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
				<NavTitle />

				<div class="hidden sm:ml-20 sm:block">
					<div class="flex space-x-4">
						{#each navigation as item (item.name)}
							<a
								href={item.href}
								class={classNames(
									item.href === $page.url.hash
										? 'bg-gray-900 text-white'
										: 'text-gray-300 hover:bg-gray-700 hover:text-white',
									'rounded-md px-3 py-2 text-sm font-medium'
								)}
								aria-current={item.href === $page.url.hash ? 'page' : undefined}
							>
								{item.name}
							</a>
						{/each}
					</div>
				</div>
			</div>
		</div>
	</div>

	{#if open}
		<div in:slide out:slide>
			<DisclosurePanel class="sm:hidden" static>
				<div class="space-y-1 px-2 pb-3 pt-2">
					{#each navigation as item (item.name)}
						<DisclosureButton
							as="a"
							href={item.href}
							class={classNames(
								item.href === $page.url.hash
									? 'bg-gray-900 text-white'
									: 'text-gray-300 hover:bg-gray-700 hover:text-white',
								'block rounded-md px-3 py-2 text-base font-medium'
							)}
							aria-current={item.href === $page.url.hash ? 'page' : undefined}
						>
							{item.name}
						</DisclosureButton>
					{/each}
				</div>
			</DisclosurePanel>
		</div>
	{/if}
</Disclosure>
