public class HelloWorldApexClassTest1 {
    public static void TesttMethod(list<Account> Acc ){
        for(Account a : Acc) {
        a.Description = 'New description';
    }
    }
}