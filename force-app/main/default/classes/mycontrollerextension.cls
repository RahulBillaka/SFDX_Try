public class mycontrollerextension {

    private Final Account acct;
    public mycontrollerextension(Apexpages.Standardcontroller Stdcontroller) {
    this.acct=(Account)Stdcontroller.getRecord();
    }
    public String getGreetings() {
    return +acct.name+ '('+acct.Id+')';
    }
}