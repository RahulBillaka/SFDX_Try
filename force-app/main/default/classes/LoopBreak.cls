public class LoopBreak {
    public static void Breakloop(){
        List<integer> values= new List<integer> {1,2,3,4,5,6,7,8,9};
            for(integer i=0; (i<=values.size()); i++){
                System.debug(values[i]);
                If(values[i]==5) {
                    break;
                }
            }
    }

}