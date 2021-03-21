<template>
  <div>
    <h2>Draw a number using the cursor or your finger</h2>
    <canvas class="Canvas" width="300" height="300" ref="Canvas" @mousemove="draw" @mousedown.stop="beginDrawing" @mouseup.stop="stopDrawing" />
    <br />
    <br />
    <br />
    <span>Cursor position (x, y): ({{ x }}, {{ y }})</span>
  </div>
</template>

<script>
export default {
  name: "Draw",
  data() {
    return {
      canvas: null,
      canvasOffset: 0,
      x: 0,
      y: 0,
      isDrawing: false,
    };
  },
  mounted() {
    var c = this.$refs["Canvas"];
    this.canvas = c.getContext("2d");
    this.canvasOffset = c.getBoundingClientRect();
  },
  methods: {
    ShowCoordinates(e) {
      this.x = e.offsetX;
      this.y = e.offsetY;
    },
    drawLine(x1, y1, x2, y2) {
      let ctx = this.canvas;
      ctx.beginPath();
      ctx.strokeStyle = "blue";
      ctx.lineWidth = 2;
      ctx.moveTo(x1, y1);
      ctx.lineTo(x2, y2);
      ctx.stroke();
      ctx.closePath();
    },
    draw(e) {
      if (this.isDrawing) {
        this.drawLine(this.x, this.y, e.offsetX, e.offsetY);
        this.x = e.offsetX;
        this.y = e.offsetY;
      }
    },
    beginDrawing(e) {
      this.x = e.offsetX;
      this.y = e.offsetY;
      this.isDrawing = true;
    },
    stopDrawing(e) {
      if (this.isDrawing) {
        this.drawLine(this.x, this.y, e.offsetX, e.offsetY);
        this.x = 0;
        this.y = 0;
        this.isDrawing = false;
      }
    },
  },
};
</script>

<style scoped>
.Canvas {
  border: 1px solid #000000;
  width: 300px;
  height: 300px;
}
</style>
