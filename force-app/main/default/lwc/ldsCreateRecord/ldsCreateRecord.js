import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
import { createRecord } from "lightning/uiRecordApi";
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import ACCOUNT_NAME_FIELD from "@salesforce/schema/Account.Name";

export default class LdsCreateRecord extends LightningElement {
  handleButtonClick() {
    const recordInput = {
      apiName: ACCOUNT_OBJECT.objectApiName,
      fields: {
        [ACCOUNT_NAME_FIELD.fieldApiName]: "ACME"
      }
    };
    createRecord(recordInput)
      .then((account) => {
        //display success message
        const toastEvent = new ShowToastEvent({
          title: "Success!",
          message: `Account created successfully with ID: ${account.id}`,
          variant: "success"
        });
        this.dispatchEvent(toastEvent);
        console.log(this);
        console.log(account);
      })
      .catch((error) => {
        // Display error message
        const toastEvent = new ShowToastEvent({
          title: "Error!",
          message: error.body.message,
          variant: "error"
        });
        this.dispatchEvent(toastEvent);
      });
  }
}
