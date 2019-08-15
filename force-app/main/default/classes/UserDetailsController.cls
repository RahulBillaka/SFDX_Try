public class UserDetailsController {
    //creating properties in apex class
    @auraenabled public String DeveloperName {get;set;}
      @auraenabled public String ArticleName {get;set;}	
        @auraenabled public Integer DeveloperAge {get;set;} 
          @auraenabled public List<account> lstofAccount {get;set;}
            @auraenabled public List<DreamWorks__c> lstofFunimation {get;set;}
                
    @auraenabled
    public static UserDetailsController initclass(){
        //creating class instance
       UserDetailsController obj = new UserDetailsController();	
        //set value in class properties
       obj.DeveloperName = 'Rahul';
       obj.DeveloperAge = 27 ;
       obj.ArticleName = 'Funimation';  
       
        //query accounts list for lstofAccount property
       obj.lstOfAccount = [select id, name from account Limit 10];
       obj.lstofFunimation = [select id, name, Category__c, Kinikiman__c from DreamWorks__c Limit 10]; 
        
        //return class instance
       return obj;
      
      }
        
    }