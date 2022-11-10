({
	doInit : function(component, event, helper) {
		var action = component.get("c.getContacts");
        action.setParams({
            accountId : component.get("v.recordId"),
        });
        action.setCallback(this, function(response){
            var getResponse = response.getReturnValue();
            component.set("v.Contacts", getResponse);
        }, "SUCCESS");
        $A.enqueueAction(action);
	},
    ViewRecord : function(component, event, helper){
        var eventSource = event.getSource();
        var Id = eventSource.get("v.name");
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
          "recordId": Id,
          "slideDevName": "detail"
        });
    navEvt.fire();
    },
})