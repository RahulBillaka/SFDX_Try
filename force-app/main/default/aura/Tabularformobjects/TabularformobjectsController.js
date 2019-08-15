({
	doInit : function(component, event, helper) {
		
        var action = component.get('c.initclass');
        action.setCallback(this, function(response) {
            
            var state= response.getState();
            if (state === "SUCCESS") {
                component.set('v.Anime', response.getReturnValue());
                component.set('v.Funimation', response.getReturnValue());
            }
            
        });
        $A.enqueueAction(action);
	}
})