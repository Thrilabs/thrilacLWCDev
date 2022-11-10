public class ContactListApexController {
@AuraEnabled
    public static List<Contact> getContacts(Id accountId){
        List<Contact> ContactList = New List<Contact>();
        ContactList =[SELECT FirstName, LastName, Email, Phone FROM Contact WHERE AccountId =:accountId];
        return ContactList;
    }
    
    @AuraEnabled
    public static Contact createContact(Contact con, Id AccountId){
        con.AccountId = AccountId;
        insert con;
        return con;
    }
}