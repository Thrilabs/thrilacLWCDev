public class AccountHandler {
    public static Account insertNewAccount(string VarName){
        try{
            Account acct = new Account();
            acct.Name = VarName;
            insert acct;
            return acct;
        }
        catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());
        } return null;
    }
}
//tried for diffarent ways, didn't achieve it in first try..below are tries

/*public class AccountHandler {
    public static Account insertNewAccount(string VarName){
        try{
             //list<Account> listacct = new list<Account>();
            Account acct = new Account();
            acct.Name = VarName;
           // listacct.add(acct)
            insert acct;
             system.debug('Record is' + acct);
            return acct;
        }
        catch(DMLException e){
            system.debug('The exception is '+ e.getMessage());
            
        }

    }

}

public class AccountHandler {
    public static list<Account> insertNewAccount(string VarName){
        list<Account> listacct = new list<Account>();
        try{    Account acct = new Account();
            acct.Name = VarName;
           listacct.add(acct);
        insert listacct;
            //Database.SaveResult[] srList = Database.insert(listacct, false);
      /* for (Database.SaveResult sr : srList) {
    if (sr.isSuccess()) {
        // Operation was successful, so get the ID of the record that was processed
        System.debug('Successfully inserted contact. Contact ID: ' + sr.getId());
        
    } else {
        // Operation failed, so get all errors
        for(Database.Error err : sr.getErrors()) {
            System.debug('The following error has occurred.');
            System.debug(err.getStatusCode() + ': ' + err.getMessage());
            System.debug('Contact fields that affected this error: ' + err.getFields());
	 }

    }

}}catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
} return listacct;
    }*/

/*public class AccountHandler {
    public static Account insertNewAccount(string VarName){
       // list<Account> listacct = new list<Account>();
       try{
           Account acct = new Account();
            acct.Name = VarName;
           //listacct.add(acct);
        insert acct;
           return acct;
          }catch (DmlException e) {
    System.debug('A DML exception has occurred: ' +
                e.getMessage());
} return null;
    }
}*/