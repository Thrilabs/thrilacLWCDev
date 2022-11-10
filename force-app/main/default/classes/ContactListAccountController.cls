public class ContactListAccountController {
    @AuraEnabled
    public static list<Contact> getContactList(ID recordId){
        return [SELECT Id, FirstName, LastName, Phone FROM Contact WHERE AccountId = :recordId];
    }
}