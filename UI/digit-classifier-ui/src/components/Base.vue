<template>
  <div class="main">
    <Heading msg="Written Digit Classifier" />
    <Draw ref="Draw" />
    <Heading msg="Recognised digit" />
    <Digit />
    <ClearButton @clear="clearCanvas" />
    <Info />
    <Footer />
  </div>
</template>

<script>
import Heading from "./Heading.vue";
import Draw from "./Draw.vue";
import Digit from "./Digit.vue";
import Info from "./Info.vue";
import Footer from "./Footer.vue";
import ClearButton from "./ClearButton.vue";

export default {
  name: "Base",
  components: {
    Heading,
    Draw,
    Digit,
    ClearButton,
    Info,
    Footer,
  },
  methods: {
    clearCanvas() {
      this.$refs["Draw"].clearCanvas();
    },
  },
};
</script>

<style scoped>
</style>
