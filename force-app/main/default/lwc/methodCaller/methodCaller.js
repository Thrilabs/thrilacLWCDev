import { LightningElement } from "lwc";

export default class MethodCaller extends LightningElement {
  handlePlay() {
    this.template.querySelector("c-video-player").play();
  }
}
