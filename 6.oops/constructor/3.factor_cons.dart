//!FACTORY CONSTRUCTOR

// Constructor normally returns nothing when it performs certain operations,  or it passes value to class when its object is created.

//A factory constructor can return an instance of the class or a subclass, but it must return an object, not a primitive type like int or double.

// But some cases need to get a return value when an object is created,  when gets a return value it can be assigned to a variable to perform some other operations. the constructor provides a return value called a factory constructor.
// Factory constructors can return values and may return:
// A new instance of the same class.
// A pre-existing instance (Singleton pattern).
// An instance of a subclass.

class Person {
  String name;
  int age;

  // Normal constructor
  Person(this.name, this.age);

  // Factory constructor returning an instance based on condition
  factory Person.create(int age) {
    if (age < 0) {
      return Person('Unknown', 0); // Default values if age is invalid
    } else {
      return Person('John Doe', age);
    }
  }
}

void main() {
  // Using factory constructor
  var person1 = Person.create(25);
  print('${person1.name}, Age: ${person1.age}'); // Output: John Doe, Age: 25

  var person2 = Person.create(-5);
  print('${person2.name}, Age: ${person2.age}'); // Output: Unknown, Age: 0
}

// ;the factory named constructor can used for different desired outputs from the value given to an object.In this case , the output of the student ID is 1, and the number given to the ID is less than 0.

// !we can use a factory constructor return value as another constructor, that makes decisional power when calling different constructors according to the value that is passed to the object.
class Student {
  String name = '';
  int age = 0;
  Student(this.name, this.age);
  factory Student.usingFactory(int id, String name) {
    if (id < 0) {
      return Student(name, 1);
    } else {
      return Student(name, id);
    }
  }
}

// factory method enables return value in the constructor, But its main application is not that, it gives different return values according to the value given to its named constructor when the object is created
