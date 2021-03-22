<template>
	<div>
		<button class="clear-btn" @click="$emit('clear')">Clear</button>
	</div>
</template>

<script>
export default {
  name: 'ClearButton',
}
</script>

<style scoped>
.clear-btn{
	margin-top: 40px;
	margin-bottom: 20px;
}
</style>
