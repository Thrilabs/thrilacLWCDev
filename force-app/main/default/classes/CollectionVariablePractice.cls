public with sharing class CollectionVariablePractice {
  public static void collectionExamples() {
    List<String> studentNames = new List<String>{ 'Thrinethra', 'Radha' };
    system.debug('Student Names ::: ' + studentNames);
    system.debug('List size ' + studentNames.size());
    List<String> courses = new List<String>();
    courses.add('java');
    courses.add('salesforce');
    courses.add('python');
    system.debug('Courses List is ::: ' + courses);
    List<Integer> ageCount = new List<Integer>();
    ageCount.add(8);
    system.debug('Age count ::: ' + ageCount?.size());
    system.debug(
      'Student Name is there? : ' + studentNames.contains('Thrinethra')
    );
    system.debug('Student Name of Index[0] : ' + studentNames[0]);
    String student1 = studentNames.get(0);
    system.debug('First studnet Name : ' + student1);
    studentNames[1] = 'RadheShyam';
    system.debug('Student Names ::: ' + studentNames);
    String expiredCourses = courses.remove(0);
    system.debug('ExpiredCourses Courses List is ::: ' + expiredCourses);
    system.debug('Updated Courses List is ::: ' + courses);
  }
  public static void collectionExamplesSetMethod() {
    Set<String> studentNames = new Set<String>{ 'Thrinethra', 'Radha' };
    system.debug('Student Names ::: ' + studentNames);
    system.debug('Set size ' + studentNames.size());
    Set<String> courses = new Set<String>();
    courses.add('java');
    courses.add('salesforce');
    courses.add('python');
    system.debug('Courses Set is ::: ' + courses);
    Set<Integer> ageCount = new Set<Integer>();
    ageCount.add(8);
    system.debug('Age count ::: ' + ageCount?.size());
    system.debug(
      'Student Name is there? : ' + studentNames.contains('Thrinethra')
    );
    system.debug('Student Name of Index[0] : ' + studentNames);
    studentNames.add('RadheShyam');
    system.debug('Student Names ::: ' + studentNames);
    courses.clear();
    system.debug('Updated Courses Set is ::: ' + courses);
    //other examples
    Set<String> myString = new Set<String>{ 'a', 'b', 'c' };
    system.debug('myString initial values :: ' + myString);
    //String results = myString.add('d');
    myString.add('e');

    system.debug('myString initial values :: ' + myString);
    //system.assertEquals(true, result);
    //system.debug('result :: '+addedResults);
  }
  public static void collectionExamplesMapMethod() {
    Map<Integer, String> alphaNumericTest = new Map<Integer, String>();
    alphaNumericTest.put(1, 'a');
    alphaNumericTest.put(2, 'b');
    alphaNumericTest.put(3, 'c');
    system.debug('The Map is ::: ' + alphaNumericTest);

    Set<Integer> keys = alphaNumericTest.keySet();
    system.debug('Keys are : ' + Keys);

    List<String> values = alphaNumericTest.values();
    system.debug('Values are : ' + values);

    for (String v : values) {
      system.debug('Map2 is ' + v);
    }

    //system.debug('alphaLst'+alphaLst);

    /*Map<Integer, List<String>> numericAlphaTest = new Map<Integer, List<String>>();
numericAlphaTest.put(1, alphaLst);
system.debug('Latest Map: '+numericAlphaTest);
*/
  }
  public static void collectionExamplesMapEx2Important() {
    //map of student and their branches
    Map<String, String> studentBranch = new Map<String, String>();
    studentBranch.put('Thri', 'EEE'); //putting name of the student as key and branch as value
    studentBranch.put('Thri', 'CSE');
    studentBranch.put('Ram', 'EEE');
    studentBranch.put('Bheem', 'CSE');
    studentBranch.put('Sneha', 'IT');
    system.debug('Student Map of Items :: ' + studentBranch); //map of student=branch key value pair

    Set<String> keysetSB = studentBranch.keySet(); //getting all set elements with keyset method(set property)
    system.debug('Key Set of students : ' + keysetSB); //i.e., set of all the student names

    List<String> brachValues = studentBranch.values(); //getting all values: list of all branch names as values
    system.debug('Brach List values : ' + brachValues);

    //Now we want to map Branch and student names: For each branch there will be list of students.
    //So, we create a map of string(branch name) and list of student names associated.
    Map<String, List<String>> branchStudents = new Map<String, List<String>>();
    //For this we will loop the set of keys from previous map and storing them in list.
    for (String student : keysetSB) {
      //passing set of keys to iteration, each student name will go into loop
      List<String> students = new List<String>(); //new list to store student names
      students.add(student); //adding those individual student name to list of students.
      system.debug('students ::: ' + students);
      String branchIndi = studentBranch.get(student); //using previous map,
      //we are passing each student name as key and getting respective branch as value and storing in string.
      system.debug('Individual Bracnch: ' + branchIndi);
      system.debug('current map: ' + branchStudents);
      if (branchStudents.containskey(branchIndi)) {
        //if the current map contains this key: already in the map in looping
        system.debug(
          'Contains key- Pass Key getting value :: ' +
          branchStudents.get(branchIndi)
        );
        branchStudents.get(branchIndi).add(student); //pass key, get value and add the value
        system.debug(
          'Contains key- Pass Key getting value, adding value :: ' +
          branchStudents.get(branchIndi)
        );
        system.debug('Map contains key :: ' + branchStudents);
      } else {
        //if map does not have same key (or) does not contains the same key, then this will be executed
        branchStudents.put(branchIndi, students); //putting the key and values to map
        system.debug('Map if not contains key: ' + branchStudents);
      }
    }

    List<List<String>> studentsLt = branchStudents.values(); //list of list of all values of the current map
    Set<String> branchesSet = branchStudents.keySet(); //set of all keys of the current map
    system.debug('students List :::' + studentsLt);
    system.debug('Branches Set :::' + branchesSet);
    system.debug('New Map ::: ' + branchStudents);
  }
}
