public class VfCustomControllerExample {
    public Account account{get;set;}
        public VfCustomControllerExample(){
            Id id=ApexPages.currentpage().getparameters().get('id'); 
            account=(id==null)?new account():[Select Name, Phone, Industry, AccountNumber from Account where Id=:id];
            }
        public pagereference save(){
           try{
              upsert(account);             
              }
           Catch (system.DMLexception e){
               ApexPages.addMessages (e);
               return null;
           } 
           pagereference redirectsuccess=new ApexPages.StandardController(Account).view();
           return redirectsuccess;  
        }        

}