public class OpportunityListController{

    public String getOpportinuty() {
        return null;
    }


    public ApexPages.StandardSetController opps{
        get{
           If(opps==null){
           opps=new ApexPages.StandardSetController(database.getqueryLocator([Select Name,Amount,CloseDate,StageName from opportunity]));
           }
        return opps;
    }
    set;
    }
    
    public List<opportunity> getOpportunity(){
        return(List<Opportunity>)opps.getRecords();
        }
        }