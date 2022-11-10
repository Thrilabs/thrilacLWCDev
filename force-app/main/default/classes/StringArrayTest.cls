public class StringArrayTest {
    public static list<string> generateStringArray(Integer n){
        list<string> StringArray = new list<string>();
        for(integer i=0; i<n; i++){
        StringArray.add('Test ' +i);
           
	}
        system.debug(StringArray);
        return StringArray;
    }

}