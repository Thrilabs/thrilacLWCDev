({
	createCon : function(component, event, helper) {
		var action = component.get("c.createContact");
        var contc = component.get("v.CreateContact");
        var validContact = component.find("contactForm").reduce(function(validSoFar, inputCmp){
		inputCmp.showHelpMessageIfInvalid();
        inputCmp.set("v.validity", {valid:false, badInput:true});
        return validSoFar && inputCmp.get('v.validity').valid;
		}, true);                                                  
        alert(validContact);
        if(validContact){
            action.setParams({
            con:component.get("v.CreateContact"),
            AccountId : component.get("v.accountId")
        });
        
        action.setCallback(this, function(response){
            var state = response.getState();
            alert(state);
            if(state==='SUCCESS' || state==='DRAFT'){
                var responseValue = response.getReturnValue();
            }else if(state==='INCOMPLETE'){
                
            }else if(state==='ERROR'){
                var errors = response.getError();//Array of errors
                console.log('Error', errors[0].duplicateResults);
                console.log('Error', errors[0].fieldErrors);
                console.log('Error', errors[0].pageErrors[0].message);
                component.set('v.ErrorMessage', errors[0].pageErrors[0].message)
                if(errors || errors[0].message){
                    
                }
            }
            
        }, 'ALL');
        $A.enqueueAction(action);
        }
        else{
            alert('Please input all the Inputs');
            console.log('Please input all the Inputs');
        }
        
	}
})