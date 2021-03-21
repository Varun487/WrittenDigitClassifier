<template>
	<div class="main">
		<Heading msg="Written Digit Classifier"/>
		<Draw />
		<Heading msg="Recognised digit"/>
		<Digit />
		<Info />
		<Footer />
	</div>
</template>

<script>
import Heading from './Heading.vue';
import Draw from './Draw.vue';
import Digit from './Digit.vue';
import Info from "./Info.vue";
import Footer from "./Footer.vue";

export default {
  name: 'Base',
  components: {
    Heading,
	Draw,
	Digit,
	Info,
	Footer
  }
}
</script>

<style scoped>
</style>
