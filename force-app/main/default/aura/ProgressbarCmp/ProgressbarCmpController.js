({
	goToPrevious : function(component, event, helper) {
		var currentStage = component.get("v.currentSteps");
       	var arrayList = component.get("v.stepsArray");
        if(currentStage != arrayList[0]) {
            var currIndex = arrayList.indexOf(currentStage);
            currentStage = arrayList[currIndex-1];
            component.set("v.currentSteps", currentStage);
            if(currentStage == 'step2') {
                component.set("v.isError", true);
            } else {
                component.set("v.isError", false);
            }
        }
	},
    goToNext : function(component, event, helper) {
		var currentStage = component.get("v.currentSteps");
       	var arrayList = component.get("v.stepsArray");
        var arrayLength = arrayList.length;
        if(currentStage != arrayList[arrayLength-1]) {
            var currIndex = arrayList.indexOf(currentStage);
            currentStage = arrayList[currIndex+1];
            component.set("v.currentSteps", currentStage);
            if(currentStage == 'step2') {
                component.set("v.isError", true);
            } else {
                component.set("v.isError", false);
            }
        }
	},
    startProgress : function(component, event, helper) {
        var arrayList = ["step1", "step2", "step3"];
        component.set("v.stepsArray", arrayList);
        component.set("v.currentSteps", arrayList[0]);
	},
})