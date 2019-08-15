public class TestControllerOpportunity 
{
   public Opportunity opportunity{get; set;}
       public TestControllerOpportunity() {
           Id id=ApexPages.currentpage().getparameters().get('id'); 
               opportunity=(id==null)?new opportunity():[Select Name, StageName, Type from Opportunity where Id=:id];
              }
       public pagereference save(){
           try{
              upsert(opportunity);             
              }
           Catch (system.DMLexception e){
               ApexPages.addMessages (e);
               return null;
           } 
           pagereference redirectsuccess=new ApexPages.StandardController(Opportunity).view();
           return redirectsuccess;  
        }                

       

        
}