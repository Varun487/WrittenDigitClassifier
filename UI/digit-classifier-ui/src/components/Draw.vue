<template>
  <div>
    <h2>Draw a number using the cursor or your finger</h2>
    <canvas
      class="Canvas"
      width="300"
      height="300"
      ref="Canvas"
      @mousemove="draw"
      @mousedown.stop="beginDrawing"
      @mouseup.stop="stopDrawing"
    />
    <br />
    <br />
    <br />
    <span>Cursor/finger position (x, y): ({{ x }}, {{ y }})</span>
  </div>
</template>

<script>
export default {
  name: "Draw",
  data() {
    return {
      canvas: null,
      x: 0,
      y: 0,
      isDrawing: false,
    };
  },
  mounted() {
    var c = this.$refs["Canvas"];
    this.canvas = c.getContext("2d");
  },
  methods: {
    drawCircle(x, y) {
      let ctx = this.canvas;
      ctx.beginPath();
      ctx.fillStyle = "blue";
      ctx.arc(x, y, 20, 0, 2 * 3.14159);
      ctx.fill();
      ctx.closePath();
    },
    draw(e) {
      if (this.isDrawing) {
        this.drawCircle(e.offsetX, e.offsetY);
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
        this.drawCircle(e.offsetX, e.offsetY);
        this.x = 0;
        this.y = 0;
        this.isDrawing = false;
      }
    },
	clearCanvas() {
		this.canvas.clearRect(0, 0, 300, 300);
	}
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
