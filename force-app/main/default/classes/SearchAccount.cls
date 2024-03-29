public class SearchAccount {

@AuraEnabled
 public static List < account > fetchAccount(String searchKeyWord1) {
  String searchKey = searchKeyWord1 + '%';
  List < Account > returnList = new List < Account > ();
  List < Account > lstOfAccount = [select id, Name, Type, Industry, Phone, Fax from account
                                   where Name LIKE: searchKey LIMIT 500];
 
  for (Account acc: lstOfAccount) {
   returnList.add(acc);
  }
  return returnList;
 }
}