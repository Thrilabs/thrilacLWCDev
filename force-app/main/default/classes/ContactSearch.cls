public class ContactSearch {
    public static list<contact> SearchForContacts(string A, string B){
        list<contact> ConList = [SELECT ID, Name FROM Contact WHERE (LastName =: A AND MailingPostalCode =:B)];
        system.debug('Contact List' + ConList);
        return ConList;
    }
}