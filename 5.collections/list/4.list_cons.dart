class Person {
  int id = 0;
  String name = "";
  Person(this.id, this.name);
  String toString() {
    return ('id:$id,name:$name');
  }
}

class Employee extends Person {
  int salary = 0;
  Employee(id, name, salary) : super(id, name);
}

void main() {
  Person person1 = Person(1, "David");
  Employee employee1 = Employee(1, "rose", 100);
  Person employee2 = Employee(3, "anna", 120);
  var person2 = Person(4, "adam");
  var employee3 = Employee(5, "Derk", 300);
  List<Person> employees = [
    person1,
    person2,
    employee1,
    employee2
  ]; // generic type not employee only person possible
  //!.........................................................................

  var list1 = List.filled(5, Employee(0, "", 0));
  //var listfrom = List<Employee>.from( employees); // from  consturctor expecting iterable which any collection set, list ,
  //! employees list hold  person that not type of employee, so we need fileter only from list
  //! same type we use list.from

//       ype 'Person' is not a subtype of type 'Employee'
// #0      new List.from (dart:core-patch/array_patch.dart:29:5)
// #1      main (file:///C:/Users/HP/Documents/dart_guide/5.collections/list/4.list_cons.dart:29:18)
// 4.list_cons.dart:29
// #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
// #3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
//!......................................................................
//! filtering specific type we use of constructor
  var listof = List<Employee>.of(employees.whereType<Employee>());
  print(listof);
  var listGenerated = List.generate(3, (index) => index + 1);
  print(listGenerated);
  var unmodifiedList = List.unmodifiable([1, 2, 4]);
// !  unmodifiedList.add(10); excetion will throw while if

//   Unhandled exception:
// Unsupported operation: Cannot add to an unmodifiable list
// #0      UnmodifiableListMixin.add (dart:_internal/list.dart:114:5)
// #1      main (file:///C:/Users/HP/Documents/dart_guide/5.collections/list/4.lis
}
