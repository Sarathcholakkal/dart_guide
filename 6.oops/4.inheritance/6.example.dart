class Person {
  String name = "";
  String surname = "";
  void givenInformation() {
    print("people at school");
  }
}

class Teacher extends Person {
  String branch = "";
  void giveInfromation() {
    print("teacher at school");
  }
}

class Student extends Person {
  int? grade;
}

main() {
  Teacher teacher1 = Teacher();
  teacher1.name = "olivia";
  teacher1.surname = "simith";
  teacher1.branch = "mathematics";
  print(
      "first teacher is:${teacher1.name}${teacher1.surname}${teacher1.branch}");

  teacher1.giveInfromation();
  ;

  Student student1 = Student();
  student1.grade = 80;
  print(student1.grade);
  student1.givenInformation();

  Person person1 = Person();
  person1.name = "rajesh";
  print(person1.name);
}
