import { createApp } from "vue";
import App from "./App.vue";
import * as tf from "@tensorflow/tfjs";

tf.loadLayersModel(
  "https://raw.githubusercontent.com/Varun487/WrittenDigitClassifier/main/UI/model/model.json"
).then(function(model) {
  window.model = model;
});

createApp(App).mount("#app");
