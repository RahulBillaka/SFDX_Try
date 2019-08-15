public class AccountsController {
	@AuraEnabled
    public static List<Account> getAccounts() {
        
        return [Select Id, name, industry, type, phone FROM Account Order By CreatedDate ASC];
                
    }
}