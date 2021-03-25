<template>
  <div class="main">
    <Heading msg="Written Digit Classifier" />
    <Draw ref="Draw" @StoppedDrawing="ComputeDigit" />
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
      this.$refs["Digit"].clearCanvas();
    },
    ComputeDigit() {
      var imgData = this.$refs["Draw"].getData();
    //   console.log("Original Image length: ", imgData.data.length);
    //   console.log("Original Image height: ", imgData.height);
    //   console.log("Original Image width: ", imgData.width);
    //   console.log("Original Image data: ", imgData.data);

      var blueData = [];
      for (var i = 2; i < 3136; i += 4) {
        blueData.push(imgData.data[i] / 255);
      }
      console.log("Image data: ", blueData);

      //   tf.loadLayersModel("../../../model/model.json").then(function (model) {
      //     window.model = model;
      //   });

      this.$refs["Digit"].drawDigit("2");
    },
  },
};
</script>

<style scoped>
</style>
