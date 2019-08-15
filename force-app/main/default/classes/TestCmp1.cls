public class TestCmp1 {
	
    @AuraEnabled
    public static List<Account> getAccounts(String strName) {

        List<Account> accounts = [SELECT Id, Name, Phone FROM Account ];
        
        return accounts;
    }
}