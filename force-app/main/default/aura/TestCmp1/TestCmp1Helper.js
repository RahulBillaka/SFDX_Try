({
	fetchAllAccountsHelper : function(component) {
		var action = component.get("c.getAccounts");
        
        /*
        action.setParams({ strName : component.get("v.firstName") });
		*/
   
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                console.log("From server: " ,response.getReturnValue());
				component.set("v.listOfAccounts",response.getReturnValue());
            }
            
        });
        $A.enqueueAction(action);//fire 
	},
    helperMethod2 : function() {
		
	}
})