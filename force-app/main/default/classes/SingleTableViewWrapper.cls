public class SingleTableViewWrapper {
    
    @auraenabled public List<Contact> lstofContacts {get; set;} 
    
    public static SingleTableViewWrapper wrapperTable(){
        
        SingleTableViewWrapper obj = new SingleTableViewWrapper();
           
        obj.lstofContacts = [Select Id, Name from Contact];
        
        return obj;
        
    }

}