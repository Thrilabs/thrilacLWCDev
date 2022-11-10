({
    myFunction : function(component, event, helper) {
        component.set('v.Columns', [
            {label: 'First Name', fieldName: 'FirstName', type: 'text'},
            {label: 'Last Name', fieldName: 'LastName', type: 'text'},
            {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
       ]);
        
        var action = component.get("c.getContactList");
        action.setParams({
            recordId : component.get("v.recordId")
        });
        
        action.setCallback(this, function(response){
            component.set("v.Contacts", response.getReturnValue());
            console.log('Response', response.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})