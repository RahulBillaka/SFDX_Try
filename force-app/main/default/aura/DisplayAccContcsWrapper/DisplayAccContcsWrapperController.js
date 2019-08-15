({
    loadData: function(component, event, helper) {
 
      //call apex class method
      var action = component.get('c.initMethod');
 
      action.setCallback(this, function(response) {
        //store state of response
        var state = response.getState();
        if (state === "SUCCESS") {
          //set response value in wrapperList attribute on component.
          alert('Check' +  JSON.stringify(response.getReturnValue()));
          component.set('v.wrapperList', response.getReturnValue());
        }
      });
      $A.enqueueAction(action);
    },
})