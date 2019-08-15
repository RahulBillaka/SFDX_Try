({
	doSearch : function(component, event, helper) {
		
        var action = component.get("c.getAccountList");
        action.setParams({ searchTerm : component.get("v.searchTerm") });
        
        action.setCallback(this, function(response) {
            var state = response.getState(); 
            if(state=="Success") {
                var accounts = response.getReturnValue(); 
                
                var searchCompleteEvent = component.getEvent("accountSearchComplete"); 
                searchCompleteEvent.setParams({accounts: accounts});
                searchCompleteEvent.fire();
                }
                })
        $A.enqueueAction(action);
	}
})