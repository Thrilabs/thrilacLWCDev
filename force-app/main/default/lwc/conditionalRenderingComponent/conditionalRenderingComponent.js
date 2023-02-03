import { LightningElement } from "lwc";

export default class ConditionalRenderingComponent extends LightningElement {
  showButton;
  areDetailsVisible;

  message = "Hello World!";

  firstName;
  lastName;

  handleChange(event) {
    const field = event.target.name;
    if (field === "firstName") {
      this.firstName = event.target.value;
    } else {
      this.lastName = event.target.value;
    }

    if (this.firstName !== "" && this.lastName !== "") {
      this.showButton = true;
    } else {
      this.showButton = false;
    }
  }

  handleClick(event) {
    this.areDetailsVisible = event.target.checked;
  }
}
