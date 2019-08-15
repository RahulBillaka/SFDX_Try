public class TabularFormFor2Objects {
    @auraenabled public List<Anime__c> lstOfAnime {get; set;}
    @auraenabled public List<DreamWorks__c> lstOfFunimation {get; set;}
    
    public static TabularFormFor2Objects initclass() {
        
        TabularFormFor2objects obj = new  TabularFormFor2objects();
        
        obj.lstOfAnime = [Select Id, name from Anime__c];
        obj.lstOfFunimation = [Select Id, name from DreamWorks__c];
        return obj; 
        
    }

}