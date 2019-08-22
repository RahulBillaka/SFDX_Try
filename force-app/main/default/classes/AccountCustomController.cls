public class AccountCustomController {
        public Pagereference save(){
        update account;
        return null;
        }
        private final Account account;
        public AccountCustomController() {
        account=[Select Id,Name,Site from Account where Id=:ApexPages.currentpage().getParameters().get('Id')];
        }
        
        public Account getAccount(){
        return null;
        }
    
}
