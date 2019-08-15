public class WrapperExample {

    public list<wrapaccount>wrapaccountList{get;set;}
    public list<account>selectedAccounts{get;set;}
    
    public wrapperexample() {
       if(wrapaccountList==null){
        wrapaccountList=new list <wrapaccount>();
        for(account a:[select id, name, phone, billingcity from account limit 10]){
            wrapaccountlist.add(new wrapaccount(a));
        }
        }
    
    }
    
    public void ProcessSelected(){
    selectedaccounts=new list<account>();
    
        for(wrapaccount wrapobj:wrapaccountlist){
        if(wrapobj.isSelected==true){
        selectedAccounts.add(wrapobj.accn);
        }
        }
    }
    
    public class wrapaccount{
        public account accn{get;set;}
        public boolean isSelected{get;set;}
            public wrapaccount(account a)
            {
              accn=a;
              isselected=false;  
            }
    }
}