public class Testbank
{
 public Bofa__c objbofa {get; set;}
 
 
  public Testbank() {
  objbofa=new bofa__C();
     
  }
  
    public pagereference Save(){
     insert objbofa;
     pagereference objpage = new pagereference('/'+objbofa.id);
     return objpage; 
}
    public Pagereference SaveAndNew(){
     insert objbofa;
     pagereference objpage = new pagereference('/'+objbofa.id);
     return objpage;
}
    public Pagereference Cancel(){
      pagereference objpage = new pagereference('/home/home.jsp');
      return objpage;  
        
}



}