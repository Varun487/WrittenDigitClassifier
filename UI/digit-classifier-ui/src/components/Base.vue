<template>
  <div class="main">
    <Heading msg="Written Digit Classifier" />
    <Draw
      ref="Draw"
      @BeginDrawing="clearDigitCanvas"
      @StoppedDrawing="ComputeDigit"
    />
    <Heading msg="Recognised digit" />
    <Digit ref="Digit" />
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
import * as tf from "@tensorflow/tfjs";

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
    clearDigitCanvas() {
      this.$refs["Digit"].clearCanvas();
    },
    clearCanvas() {
      this.$refs["Draw"].clearCanvas();
      this.$refs["Digit"].clearCanvas();
    },
    ComputeDigit() {
      var imgData = this.$refs["Draw"].getData();

      var blueData = [];
      for (var i = 2; i < 3136; i += 4) {
        blueData.push(imgData.data[i] / 255);
      }

      window.model
        .predict([tf.tensor(blueData).reshape([1, 784])])
        .array()
        .then((scores) => {
          scores = scores[0];
          var predicted = scores.indexOf(Math.max(...scores));
          this.$refs["Digit"].drawDigit(predicted.toString());
        });
    },
  },
};
</script>

<style scoped>
</style>
