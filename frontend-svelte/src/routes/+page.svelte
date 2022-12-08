<script lang="ts">
    import ProjectsGrid from "./projectsGrid.svelte";
    import SportsSection from "./sportsSection.svelte";
    import TechnologiesGrid from "./technologiesGrid.svelte";
</script>


<div class="section" id="intro">
    <div class="img-section">
        <div>
            <span class="text-6xl hover-underline break-elements-onwrap">
                <span class="font-semibold name-gradient">Rashaad Akbar</span>
                is the name
            </span>
            <p class="text-3xl my-2">I'm ahead of my <span class="font-bold bg-gradient-to-r from-cyan-500 to-sky-500 bg-clip-text text-transparent">game</span></p>
        </div>

        <img src="/my_photo.jpeg" alt="A pic of me" class="w-64 rounded-md object-contain md:ml-auto">
    </div>
</div>

<div class="section" id="projects">
    <h1 class="title-text" id="projects">Projects</h1>
    <ProjectsGrid />
</div>

<div class="section" id="technologies">
    <h1 class="title-text">Technologies I know</h1>

    <TechnologiesGrid />
</div>

<div class="section" id="sports">
    <h1 class="title-text">Sports</h1>
    <div class="flex flex-row justify-evenly">
        <SportsSection />

        <div>
            <h1 class="text-3xl text-center font-semibold bg-gradient-to-r text-transparent bg-clip-text from-emerald-400 to-teal-500 via-green-500">I like to play Basketball, Football and Chess</h1>
        </div>
    </div>
</div>


<style lang="postcss">
    .section {
        @apply flex flex-col items-start rounded-lg min-h-[80vh] mx-10 lg:mx-20;
    }

    .img-section {
        @apply flex flex-col items-start rounded-lg w-full md:flex-row md:items-center;
    }

    .break-elements-onwrap {
        @apply flex sm:inline flex-wrap break-keep gap-2;
    }

    .title-text {
        @apply hover-underline text-6xl font-semibold mb-10;
    }

    .name-gradient {
        @apply bg-gradient-to-br from-pink-600 to-yellow-500 bg-clip-text text-transparent;
    }

    .hover-underline {
        /* display: inline-block; */
        background-image: linear-gradient(90deg, rgb(253, 100, 49), orange);
        background-size: 0% 3px;
        background-repeat: no-repeat;
        background-position: left bottom;

        transition: background-size 400ms ease;
    }

    @media screen(sm) {
        .hover-underline:hover {
            background-size: 100% 3px;
        }
    }
</style>