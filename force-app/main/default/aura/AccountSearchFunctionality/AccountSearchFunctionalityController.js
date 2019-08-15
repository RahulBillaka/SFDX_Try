({
	Search : function(component, event, helper) {
        var searchfield = component.find('searchfield');
        var isValueMissing = searchfield.get('v.validity').valueMissing;
        if(isValueMissing) {
            searchfield.showHelpMessageIfInvalid();
            searchfield.focus();
        }else{
            helper.SearchHelper(component,event);
        }
		
	}
})