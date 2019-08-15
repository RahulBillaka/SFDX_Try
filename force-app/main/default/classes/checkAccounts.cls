@RestResource(urlMapping='/ShowAccounts/*')
global class checkAccounts {
         @HttpGet
global static Account doGet()
{
    RestResponse res= RestContext.response;
    RestRequest req=RestContext.request;
    String accountId=req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
    System.debug('Account Id:'+accountId);
    Account result=[select Id, name, phone, website From Account where Id=: accountId ];
    return result;
}

@HttpPost
global static String doPost(String Name, String Phone, String AccountNumber)
{
    Account acc = new Account();
    acc.name = name;
    acc.phone=phone; 
    acc.AccountNumber = AccountNumber;
    insert acc;
    return acc.id;
} 

@HttpDelete
global static void doDelete()
{
    RestResponse res=RestContext.response;
    RestRequest req=RestContext.request;
    String AccNumber=req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
    Account result=[select Id, Name, phone, website FROM Account where AccountNumber= :AccNumber]; 
    Delete result;
}
      
}