public class test2 {
    public Account Objacc {get; set;} 
            
public test2() {

    Objacc= New Account();
    Objacc= [Select id,name,accountnumber,AccountSource , SLAExpirationDate__c ,site,DandbCompanyId from Account Limit 1];
   
 }  
     public void Save(){
     insert Objacc;
     }

}