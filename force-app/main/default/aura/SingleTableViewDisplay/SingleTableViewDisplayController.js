({
	doInit : function(component, event, helper) {
	
        var action = component.get('c.initclass') 
            action.setcallback(this, function(response) {
                var state= response.getState();
                   if(state=="Success") {
                     component.set('v.Contact', response.getReturnvalue());                 
                                           
          }
            
        });
        $A.enqueueAction(action);
	}
})