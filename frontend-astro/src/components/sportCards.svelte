<script lang="ts">
	import { fly } from 'svelte/transition';

	let chessCardClicked = false;
</script>

<div class="sports-card-group">
	<div class="card" id="air-rifle-card">
		<svg
			id="air-rifle"
			xmlns="http://www.w3.org/2000/svg"
			class="fill-neutral-300"
			xmlns:xlink="http://www.w3.org/1999/xlink"
			viewBox="0 0 459 459"
		>
			<g transform="translate(0 -540.36)">
				<g>
					<g>
						<polygon
							points="271.3,720.109 286.3,720.109 286.3,686.109 271.3,686.109 271.3,695.609 180.1,695.609 180.1,710.609      271.3,710.609    "
						/>
						<path
							d="M459,730.311h-8.6v-10.2h-15v10l-246.7-1.1c-7.5,0-15.7,1.5-22.4,4.2l-14.2,4.8c-14.6,3.1-26.5-0.1-39.1-3.6     c-9.8-2.7-19.9-5.5-31.7-5.5H1.4l5.3,10.8c13.6,27.8,6.7,48.1-2.8,76.2l-3.9,11.6l126.9-18.1h0.1c17.1-2.8,31.8-11.5,42.3-23.8     h43.4c-2.6,13.7-6.1,28.4-13.9,38.3c-1.4,1.8-1.9,4.2-1.4,6.5c0.6,2.3,2.2,4.1,4.3,5l40.7,17.6c1,0.4,2,0.6,3,0.6     c1.2,0,2.3-0.3,3.4-0.8c2-1,3.4-2.8,3.9-5l16-68v-0.1c11.4-5,21.6-13,29.6-23.6l8.5-11.5l152.1,0.7L459,730.311L459,730.311z      M124.6,794.611L22,809.211c6.9-21.3,11.2-41.3,2.8-65.2h56.6c9.8,0,18.5,2.4,27.7,4.9c13.9,3.8,28.3,7.8,46.7,3.7l14.9-5     C167.1,771.511,148.9,790.611,124.6,794.611z M240.2,835.711L240.2,835.711l-24.4-10.5c6.6-12,9.7-26.4,12.1-39.5h12.6     c4,0,7.9-0.3,11.7-1L240.2,835.711z M286.4,747.111c-11.2,14.9-27.9,23.5-45.8,23.5h-61.4c3.9-8.1,6.4-17.1,7-26.5     c0.8,0,1.7-0.1,2.5-0.1l99.7,0.5L286.4,747.111z"
						/>
					</g>
				</g>
			</g>
		</svg>
		<h3>Air Rifle</h3>
	</div>
	<div class="card" id="football-card">
		<svg xmlns="http://www.w3.org/2000/svg" id="football" viewBox="0 -960 960 960"
			><path
				d="M479.833-86.667q-80.74 0-152.565-31.096-71.825-31.097-125.13-84.5-53.305-53.404-84.388-125.129Q86.667-399.116 86.667-480q0-81.24 31.096-152.899 31.097-71.658 84.5-124.963 53.404-53.305 125.129-84.388Q399.116-873.333 480-873.333q81.24 0 152.899 31.096 71.658 31.097 124.963 84.5 53.305 53.404 84.388 124.991 31.083 71.587 31.083 152.913 0 80.74-31.096 152.565-31.097 71.825-84.5 125.13-53.404 53.305-124.991 84.388-71.587 31.083-152.913 31.083Zm200.834-486 64-22.166L762-656q-32.666-50.834-80.604-87.217-47.937-36.384-108.063-55.45L512-757.469v66.136l168.667 118.666Zm-400.583 0 168.583-118.666v-66.092l-61.5-41.242q-59.834 19-107.834 55.417-48 36.416-80.667 87.093l20 61.24 61.418 22.25Zm-50.203 311.334 56.204-6L322-328.667l-60-184-66.806-22.667L150-499.289q0 69.2 16.333 126.245Q182.666-316 229.881-261.333ZM480-150q26 0 52.667-4.666 26.666-4.667 54.667-12.667l31.333-68-29.849-52H372l-30 52 31.333 68q25.333 8 53 12.667Q454-150 480-150ZM380-350.666h198l58.667-174.667L480-636.667 322-525.186l58 174.52Zm350.826 89.333Q777.334-316 793.667-373.085 810-430.171 810-499.333l-45.194-31.334-66.139 18-60 183.843L674-267.333l56.826 6Z"
			/></svg
		>
		<h3>Football</h3>
	</div>
	<div class="card" id="chess-card" on:mousedown={() => (chessCardClicked = !chessCardClicked)}>
		<span class="relative mb-2 inline-flex h-[20vmin] w-[20vmin]">
			{#if chessCardClicked}
				<svg
					xmlns="http://www.w3.org/2000/svg"
					transition:fly={{ y: 150, duration: 300 }}
					viewBox="0 0 448 512"
					><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path
						d="M32 192V48c0-8.8 7.2-16 16-16h64c8.8 0 16 7.2 16 16V88c0 4.4 3.6 8 8 8h32c4.4 0 8-3.6 8-8V48c0-8.8 7.2-16 16-16h64c8.8 0 16 7.2 16 16V88c0 4.4 3.6 8 8 8h32c4.4 0 8-3.6 8-8V48c0-8.8 7.2-16 16-16h64c8.8 0 16 7.2 16 16V192c0 10.1-4.7 19.6-12.8 25.6L352 256l16 144H80L96 256 44.8 217.6C36.7 211.6 32 202.1 32 192zm176 96h32c8.8 0 16-7.2 16-16V224c0-17.7-14.3-32-32-32s-32 14.3-32 32v48c0 8.8 7.2 16 16 16zM22.6 473.4L64 432H384l41.4 41.4c4.2 4.2 6.6 10 6.6 16c0 12.5-10.1 22.6-22.6 22.6H38.6C26.1 512 16 501.9 16 489.4c0-6 2.4-11.8 6.6-16z"
					/></svg
				>
			{:else}
				<!-- Show pawn -->
				<svg
					xmlns="http://www.w3.org/2000/svg"
					class="absolute inline-flex"
					transition:fly={{ y: -120, duration: 300 }}
					viewBox="0 0 320 512"
					><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path
						d="M215.5 224c29.2-18.4 48.5-50.9 48.5-88c0-57.4-46.6-104-104-104S56 78.6 56 136c0 37.1 19.4 69.6 48.5 88H96c-17.7 0-32 14.3-32 32c0 16.5 12.5 30 28.5 31.8L80 400H240L227.5 287.8c16-1.8 28.5-15.3 28.5-31.8c0-17.7-14.3-32-32-32h-8.5zM22.6 473.4c-4.2 4.2-6.6 10-6.6 16C16 501.9 26.1 512 38.6 512H281.4c12.5 0 22.6-10.1 22.6-22.6c0-6-2.4-11.8-6.6-16L256 432H64L22.6 473.4z"
					/></svg
				>
			{/if}
		</span>
		<h3>Chess</h3>
	</div>
	<div class="card" id="basketball-card">
		<!-- <span class=" rounded-full hover:animate-spin transition-transform"> -->
		<svg id="basketball" xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 960 960"
			><path
				fill="#ee6730"
				d="M81-510q2-47 23-105t52-101q63 54 89 106t33 100H81Zm601 0q7-48 33-100t89-106q31 43 52 101t23 105H682ZM156-245q-31-43-52-100.5T81-450h197q-7 48-33 99.5T156-245Zm648 0q-63-54-89-105.5T682-450h197q-2 47-23 104.5T804-245ZM339-510q-8-61-37-121.5T196-762q43-42 106-76t148-41v369H339Zm171 0v-369q85 7 148.5 41T765-762q-77 70-106.5 130.5T621-510H510ZM450-81q-90-7-150.5-41.5T196-199q77-70 106-130t37-121h111v369Zm60 0v-369h111q8 61 37.5 121T765-199q-43 42-104 76.5T510-81Z"
			/></svg
		>
		<!-- </span> -->
		<h3>Basketball</h3>
	</div>
</div>

<style lang="postcss">
	.sports-card-group,
	.card {
		aspect-ratio: 5 / 7;
	}

	.sports-card-group,
	.card {
		width: 33vmin;
	}

	.sports-card-group {
		@apply absolute;
		transition: transform 400ms ease;
	}

	.card {
		@apply flex flex-col items-center border-[2px] border-zinc-900 bg-neutral-800 p-4
               rounded-lg;
		position: absolute;
		transition: transform 800ms cubic-bezier(.05,.43,.25,.95), box-shadow 150ms cubic-bezier(0.4, 0, 0.2, 1);
	}
	.card:not(:first-child) {
		box-shadow: -2.5vmin 1vmin 2vmin rgba(0, 0, 0, 0.25);
	}

	.card > h3 {
		@apply text-2xl font-medium;
	}

	.card svg {
		height: 20vmin;
		width: 20vmin;
	}

	.card:hover {
		@apply -translate-y-[10%];
	}

	.card:nth-child(1) {
		@apply translate-x-[-50%];
	}

	.card:nth-child(3) {
		@apply translate-x-[50%];
	}

	.card:nth-child(4) {
		@apply translate-x-[100%];
	}

	.sports-card-group:hover > .card:not(:first-child) {
		box-shadow: -1vmin 1vmin 2vmin rgba(0, 0, 0, 0.25);
	}

	.sports-card-group:hover > .card:nth-child(1) {
		@apply translate-x-[-150%];
	}

	.sports-card-group:hover > .card:nth-child(2) {
		@apply translate-x-[-50%];
	}

	.sports-card-group:hover > .card:nth-child(3) {
		@apply translate-x-[50%];
	}
	.sports-card-group:hover > .card:nth-child(4) {
		@apply translate-x-[150%];
	}

	@keyframes basketball-animation {
		100% {
			translate: 0 -30%;
		}
	}

	#basketball-card:hover > #basketball {
		animation: basketball-animation 400ms infinite alternate;
		animation-timing-function: ease;
	}

	#football-card:hover > #football {
		@apply animate-spin;
		animation-iteration-count: 1;
	}

	#chess-card > span > svg {
		@apply mb-2 fill-neutral-300;
	}

	@keyframes air-rifle-animation {
		25% {
			translate: -15%;
		}
		75% {
			translate: 15%;
		}
		100% {
			translate: none;
		}
	}

	#air-rifle-card:hover > #air-rifle {
		animation: air-rifle-animation 372ms infinite;
	}
</style>
