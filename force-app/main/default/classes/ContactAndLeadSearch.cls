public class ContactAndLeadSearch {
    public static list<list<sObject>> searchContactsAndLeads(String A){
        list<list<sObject>> SearchList = [FIND ':A' IN ALL FIELDS RETURNING Contact(Id, LastName, Description), Lead(Id, LastName)];
        system.debug('list' +SearchList);
        return SearchList;
    }

}