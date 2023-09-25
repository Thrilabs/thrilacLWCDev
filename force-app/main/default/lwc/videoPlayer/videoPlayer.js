import { LightningElement, api } from "lwc";

export default class VideoPlayer extends LightningElement {
  @api
  play() {
    console.log("Video Player");
  }
}
