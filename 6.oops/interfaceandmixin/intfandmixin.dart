// Dart, mixins, interfaces, and abstract classes are used for code reuse and defining contracts for classes, but they
//have different purposes and behaviors. Let’s break down their differences and answer your questions clearly.

// 📌 1. What is the difference between a Mixin and an Interface in Dart?
// Aspect	Mixin	Interface
// Purpose	To share code (behavior) between multiple classes.	To define a contract (methods to implement) for classes.
// Usage	Use the with keyword.	Use the implements keyword.
// Code Reuse	Can have method implementations.	Cannot share code directly, only method signatures.
// Multiple Inheritance	Supports multiple mixins (with M1, M2).	Supports multiple interfaces (implements I1, I2).
// Constructors	Cannot have constructors.	Cannot have constructors.

mixin Flyable {
  void fly() {
    print("Flying...");
  }
}

class Bird with Flyable {}

void main() {
  Bird().fly(); // Output: Flying...
  Fish().swim(); //
  Rat().crying();
}

class Swimmable {
  void swim() {
    print("kid swimmig");
  } // Interface method (no body)
}

class Fish implements Swimmable {
  @override
  void swim() {
    print("adult Swimming...");
  }
}

abstract class Animal {
  void crying();
}

class Rat implements Animal {
  @override
  void crying() {
    print("rat is crtying");
  }
}
