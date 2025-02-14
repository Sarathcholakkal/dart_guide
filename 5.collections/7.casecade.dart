// main() {
//   print(topLevelVar);
//   var list = [1, 2, 4, 3];
//   // list.sort();
//   // var newlist = list.reversed.toList();
//   // newlist.add(20);
//   // print(newlist);

//   (list..sort())..add(10);

//   print(list);
// }

//!==========================================================================

// void main() {
//   var person = Person('Alice', 30)
//     ..greet() // Calls the greet method
//     ..age = 31 // Updates the age property
//     ..greet(); // Calls the greet method again
// }

// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);
//   void greet() {
//     print('Hello, my name is $name and I am $age years old.');
//   }
// }

//!=====================================

void main(List<String> args) {
  List<int> list2 = [1, 0, 2]
    ..sort()
    ..reversed
    ..addAll([10, 50, 30])
    ..sort()
    ..map((e) => e + 1);

  print(list2);

  //! map is not worked properly so need to considerd it to
  //! here map will increamet each element by one but not found in result
  //! why map can't get full of list to do operaion
  //! the methods who has  return value must be mention
  List<int> list3 = ([1, 0, 2]..sort())..reversed.toList();
  print(list3);
}
