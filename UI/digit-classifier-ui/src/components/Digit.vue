<template>
  <div>
    <canvas class="Canvas" ref="DigitCanvas" />
  </div>
</template>

<script>
export default {
  name: "Digit",
  mounted() {
    var c = this.$refs["DigitCanvas"];
    this.canvas = c.getContext("2d");
  },
  methods: {
    drawDigit(digit) {
      this.canvas.font = "100px Arial";
      this.canvas.fillText(digit, 120, 105);
    },
    clearCanvas() {
      this.canvas.clearRect(0, 0, 300, 300);
    },
  },
};
</script>

<style scoped>
.Canvas {
  border: 1px solid #000000;
  width: 100px;
  height: 100px;
}
</style>
