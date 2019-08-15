public class TestVF2 
{
    Public Account objAccount {get;set;}
    Public Contact objContact {get;set;}
    Public Position__c objPosition {get;set;}
    public TestVF2()
    {
        objAccount = new Account();
        objContact = new Contact();
        objPosition = new Position__c();
    }
    
    public PageReference createAccount()
    {
        insert objAccount;
        PageReference obj = new PageReference('/'+objAccount.Id);
        return obj;
    }
    
    public PageReference createContact()
    {
        insert objContact;
        PageReference obj = new PageReference('/'+objContact.Id);
        return obj;
    }
    
     public PageReference createPosition()
    {
        insert objPosition;
        PageReference obj = new PageReference('/'+objPosition.Id);
        return obj;
    }
}