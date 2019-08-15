({
	sum : function(component, event, helper) {
		var var1 = component.get('v.myNumber1');
        var var2 = component.get('v.myNumber2');
        var var3 = var1 + var2;
        console.log('====var3======',var3);
        component.set("v.total", var3);
	},
    sub : function(component, event, helper) {
		var var1 = component.get('v.myNumber1');
        var var2 = component.get('v.myNumber2');
        var var3 = var1 - var2;
        console.log('====var3======',var3);
        component.set("v.total", var3);
	}
})