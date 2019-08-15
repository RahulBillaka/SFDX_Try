public with sharing class AccountSearchFunctionality {
    
    @AuraEnabled
    public static List<account> fetchAccount(String searchKeyword) {
        String searchkey = searchkeyword + '%';
        List <Account> returnList = new List<Account> ();
        List <Account> lstofAccount = [select id, Name,type, industry,phone From Account where Name Like:searchkey Limit 500];
        
        for(Account acc:lstofAccount) {
            returnList.add(acc);
            
        }  
        return returnList;
    }

}