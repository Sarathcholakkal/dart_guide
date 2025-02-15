// **Up casting: super class reference  assigned by sub class  object ,**

// There is animal class is super class, and its subclass Override using it's super class method.

import 'dart:io';

class Animal {
  void giveInformation() {
    print("it is an animal");
  }
}

class Mouse extends Animal {
  @override
  void giveInformation() {
    print("it is a mouse and animal");
  }
}

class Cat extends Animal {
  @override
  void giveInformation() {
    print("it is a Cat and animal");
  }
}

// Animal reference type created here, is  connected with many different objects. Because  super class of object commeing here same.
// super class reference act as different type of object , according to which subclass object passed.
// When we create a super class reference  in any function.

void pol(Animal animal) {
  //! animal reference here connected to many diffence object
  animal.giveInformation();
}

main() {
  Animal animla1 = Animal();
  Animal mouse1 = Mouse();
  Animal cat1 = Cat();
  // we can also pass its sub class object.
  pol(animla1);
  pol(mouse1);
  pol(cat1);
}


// !so variable can  be bound in to very different object is called  polymorphism .
//! UPcasting superclass refernce used for subclass instance called 
//!Even though the reference type is Animal, Dart uses late binding to 
//!decide at runtime to call the correct overridden version from Mouse or Cat.


// * * *

//! Late Binding. super class reference (Animal  obj) assign   another sub class  object( upcasting) ,
// Animal class reference using in method  also  expecting cat class object for that 
// it is already create a memory space,  it bind later when cat object  will come.

// Concept	Explanation	Example from Your Code
// Polymorphism	One reference type behaves differently for different object types.	pol(mouse1), pol(cat1)
// Upcasting	Superclass reference holds a subclass object.	Animal mouse1 = Mouse();
// Late Binding	Method call resolved at runtime based on object type.	animal.giveInformation(); calls correct method
// Dynamic Dispatch	The runtime system decides which method to call.	Mouse or Cat method is called dynamically


//  Why is it Called Late Binding?
// Because the binding (connecting method call to method implementation) happens late (at runtime).
// If it were early binding, the superclass method would always be called, regardless of the actual object type.