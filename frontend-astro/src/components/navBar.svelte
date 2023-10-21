<script lang="ts">
  	import {onMount} from 'svelte';
  import NavTitle from "./navTitle.svelte";
  import { slide } from "svelte/transition";

  const navigation = [
    { name: "Blog", href: "/blog" },
    { name: "Introduction", href: "/#intro" },
    { name: "Projects", href: "/#projects" },
    { name: "Technologies", href: "/#technologies" },
    { name: "Sports", href: "/#sports" },
  ];

  let win: Window;

  function classNames(...classes: string[]) {
    return classes.filter(Boolean).join(" ");
  }

  onMount(() => {
    win = window;
  });
</script>

<nav
  class="sticky left-0 right-0 top-0 z-[9999] h-[var(--navbar-height)] bg-neutral-800"
>
  <div class="max-w-7xl px-2 sm:px-6 lg:px-8">
    <div class="relative flex h-16 items-center justify-between">
      <div
        class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start"
      >
        <NavTitle />

        <div class="hidden sm:ml-20 sm:block">
          <div class="flex space-x-4">
            {#each navigation as item (item.name)}
              <a
                href={item.href}
                class={classNames(
                  item.href === win?.location.hash
                    ? "bg-gray-900 text-white"
                    : "text-gray-300 hover:bg-gray-700 hover:text-white",
                  "rounded-md px-3 py-2 text-sm font-medium"
                )}
                aria-current={item.href === win?.location.hash ? "page" : undefined}
              >
                {item.name}
              </a>
            {/each}
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>
