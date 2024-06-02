import BaseHead from "../components/BaseHead.astro";
import NavBar from "../components/navbar.svelte";
import Footer from "../components/footer.astro";
import BackgroundGrid from "../components/backgroundGrid.svelte";
import { SITE_TITLE, SITE_DESCRIPTION } from "../consts";

<Fragment>
<html lang="en">
<head>
<BaseHead title={SITE_TITLE} description={SITE_DESCRIPTION} />
</head>
<body class="">
<NavBar client: load />

<div class="relative flex flex-col items-start h-full">
<BackgroundGrid client: load />

<section class="absolute items-center justify-center -translate-y-32">
<h1 class="font-monocraft text-center title-text inline name-gradient !my-4">
<Ping /> Rashaad is the name
</h1>
<h2 class="text-2xl font-monocraft">
May or may not be known as <span class="font-doodle hover-underline">Slim Shady</span>
or <span class="font-doodle hover-underline">Batman</span>
</h2>
</section>
</div>

<Footer />
<style>{`
      section {
        @apply flex flex-col h-full w-full pt-[var(--navbar-height)]
               px-5 sm:px-10 lg:px-20;
      }
      .title-text {
        @apply my-10 text-5xl font-semibold;
      }

      .name-gradient {
        @apply bg-gradient-to-br from-green-400 to-emerald-600 via-green-600  bg-clip-text text-transparent;
      }

      .hover-underline {
        /* display: inline-block; */
        background-image: linear-gradient(
          90deg,
          theme("colors.green.600"),
          green
        );
        background-size: 0% 6px;
        background-repeat: no-repeat;
        background-position: left bottom;

        transition: background-size 400ms ease;
      }

      @media screen(sm) {
        .hover-underline:hover {
          background-size: 100% 3px;
        }
      }

      :global(#tiles) {
        background: linear-gradient(
          to bottom,
          transparent,
          var(--background-color) 92%
        );
      }

      :global(#tiles-wrapper) {
        filter: blur(0.5px);
      }
    `}</style>
</body></html>
</Fragment>;
