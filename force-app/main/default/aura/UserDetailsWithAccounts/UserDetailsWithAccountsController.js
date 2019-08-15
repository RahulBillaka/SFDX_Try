({
	doInit : function(component, event, helper) {
		//call apex class method
	var action = component.get('c.initclass');
        action.setCallback(this,function(response){
    var state = response.getState();
            alert(state);
        if (state ==="SUCCESS"){
            //alert(JSON.stringify(response.getreturnvalues()));
            component.set('v.objUserDetailsController', response.getReturnValue());
            var result = component.get('v.objUserDetailsController');
            alert(JSON.stringify(result));
            }
          });
	  $A.enqueueAction(action);
        },
     })