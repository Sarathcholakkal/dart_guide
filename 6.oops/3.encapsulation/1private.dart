//we should see the environment and area values in the console.
//This time we will create a class named student.
//And this class will have the student's number and grade informati
// We will prepare a method that lists and prints these students
// by randomly generating the grade and number information of this
// student in a list with 20 elements.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Student student1 = Student(grade: 10, mark: 30);
  List<Student> studentList = List.filled(20, Student());
  createStudentList(studentList);
  print("${studentList[5].grade}" "${studentList[6].mark}");

  for (var student in studentList) {
    print(student);
  }
}

// class Student {
//   int _mark;
//   int _grade;
//   Student(
//       {this._grade=1,
//       this._mark=1}); //! error will occure becaase argument of consturtor cannot be private ,
// }

class Student {
  int mark;
  int grade;
  Student({this.grade = 1, this.mark = 1});
  String toString() {
    return ("mark:$mark grad:$grade"); //! now student object will print descriptly on the screen
  }
}

void createStudentList(List<Student> list) {
  for (int i = 0; i < 20; i++) {
    list[i] = Student(mark: Random().nextInt(200), grade: Random().nextInt(20));
  }
}
