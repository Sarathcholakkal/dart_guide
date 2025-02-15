//!interfaces are implicitly (any normal class can be interface class)created from classes. However, interfaces cannot have method implementations
//! if you use implements.(if use interface need to reimplenet all normal methods in sub class)
// class MyInterface {
//   void display() {
//     print("Hello from Interface");
//   }
// }

// class MyClass implements MyInterface {
//   @override
//   void display() {
//     print("Hello from MyClass");
//   }
// }

// void main() {
//   MyClass().display(); // Output: Hello from MyClass
// }

//
// Feature	implements (Interface)	extends (Inheritance)
// Code Reuse	❌ No	✅ Yes
// Must Override?	✅ Yes, all methods	❌ No, optional
// Multiple Inheritance	✅ Yes (implements A, B)

//!Dart, every class can act as an interface, even an abstract class. To use an abstract class as an interface, you must use the implements keyword.

abstract class Animal {
  void eat(); // Abstract method
  void sleep() {
    print("Sleeping..."); // Concrete method
  }
}

class Dog implements Animal {
  @override
  void eat() {
    print("Dog is eating");
  }

  @override
  void sleep() {
    print("Dog is sleeping");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Dog is eating
  dog.sleep(); // Output: Dog is sleeping
}
// 📊 Difference: extends vs implements with Abstract Class:
// Feature	extends (Inheritance)	implements (Interface)
// Method Reuse	✅ Inherits methods from parent	❌ Must reimplement all methods
// Concrete Methods	✅ Automatically available	❌ Ignored, must redefine
// Multiple Inheritance	❌ Not allowed	✅ Allowed (implements A, B)
// Flexibility	🚀 Best for code reuse	🚀 Best for enforcing contracts

 //!class is used as an interface (with implements), the implementing class must override all methods, even if those methods have bodie


//  📌 3. What is the difference between an Interface and an Abstract Class in Dart?
// Aspect	Interface (implements)	Abstract Class (extends)
// Purpose	To define a contract for implementing classes.	To provide base functionality and contract for subclasses.
// Method Implementation	Cannot provide method implementations for implements classes (even if declared).	Can have implemented and abstract methods.
// Constructors	Cannot have constructors when used as an interface.	Can have constructors.
// Multiple Inheritance	Supports multiple inheritance. (implements I1, I2)	Single inheritance only (extends).
// Flexibility	Forces complete implementation of all methods.	Can partially implement methods and leave some abstract.