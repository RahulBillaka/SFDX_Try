public class AccountStandardSetController {
   public ApexPages.StandardSetController acct{
       get{
           If(acct==null)
           {
           acct= new ApexPages.StandardSetController(Database.getquerylocator([Select Name,AccountNumber,Type from Account]));    
           } 
           return acct;
           }
       set;
          }
          public List<Account> getAccounts() {
             return (List<Account>)acct.getRecords();     
}
}