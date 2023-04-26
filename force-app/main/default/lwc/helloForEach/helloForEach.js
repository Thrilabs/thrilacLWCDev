import { LightningElement } from "lwc";

export default class HelloForEach extends LightningElement {
  contacts = [
    {
      Id: "003171931112854375",
      Name: "Amy Taylor",
      Title: "COO"
    },
    {
      Id: "003192301009134555",
      Name: "Michael Jones",
      Title: "CTO"
    },
    {
      Id: "003848991274589432",
      Name: "Jennifer Wu",
      Title: "CEO"
    }
  ];
}
