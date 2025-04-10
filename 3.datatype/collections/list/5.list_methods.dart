import 'dart:io';

import '4.list_cons.dart';

void main() {
  Person person1 = Person(1, "David");
  Employee employee1 = Employee(1, "rose", 100);
  Person employee2 = Employee(3, "anna", 120);
  var person2 = Person(4, "adam");
  var employee3 = Employee(30, "Derk", 300);
  List<Person> employees = [person1, person2, employee1, employee2, employee3];

  employees.add(person2); // add a single value
  employees.addAll([person2, person1]); // add iterable
  //! 1.........
  bool result = employees.any((Person element) =>
      element.id >
      20); // Checks whether any element of this iterable satisfies test.
//if any of them make test return true, otherwise returns false. Returns false if the iterable is empty.
  print(result);
  //! 2.........
  Map<int, Person> newMap = employees
      .asMap(); //The map uses the indices of this list as keys and the corresponding objects as values.
  print(newMap);
  final numbers = <int>[1, 2, 3];
  //! 3.........
  numbers
      .clear(); //  Removes all objects from this list; the length of the list becomes zero.
  print(numbers.length); // 0
  print(numbers); // []
  //! 4.........
  bool resultEvery = employees.every((e) => e.id < 20);
  print(
      resultEvery); //if any of them not statisfy test return false, otherwise returns true. Returns true if the iterable is empty
  //! 5.........
  var mapIterable = employees.map((Person e) =>
      "${e.name}"); //The map() method is used to transform each item in a list and create a lazy iterable with the results.
  print(mapIterable);
  //!6..........

  employees.sort((e1, e2) {
    if (e1.id < e2.id) {
      return -1;
    } else if (e1.id > e2.id) {
      return 1;
    } else {
      return 0;
    }
  }); //Sorts this list according to the order specified by the compare function.
  print(employees);
  final values = <String>['two', 'three', 'four'];
// Sort from shortest to longest.
  values.sort((a, b) => a.length.compareTo(b.length));
  print(values);
}
