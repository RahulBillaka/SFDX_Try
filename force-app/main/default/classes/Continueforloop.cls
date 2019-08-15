public class Continueforloop {
    public static void ContinueLoop(){
        List<integer> myList=new List<integer>{12,3,2,4,5,6,7,8,91,15,54,48};
                
            for(integer i :myList){
                
            if(i==91)
            {
                continue;
            }
                System.debug(i);
        }
       List<String> NewList=new List<String>{'cat', 'dog', 'doll', 'ding', 'dong', 'luffy','zoro','nami','usopp'};
           for(String j:NewList){
               
           if(j.startsWith('d'))
           {
               continue;
           }
           System.debug(j);
       }
        
    }

}