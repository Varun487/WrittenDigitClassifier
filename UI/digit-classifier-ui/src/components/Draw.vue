<template>
	<div>
		<h2>Draw a number using the cursor or your finger</h2>
		<canvas class="Canvas" />
	</div>
</template>

<script>
export default {
  name: 'Draw',
}
</script>

<style scoped>
.Canvas{
	border: 1px solid #000000;
	width: 300px;
	height: 300px;
}
</style>
