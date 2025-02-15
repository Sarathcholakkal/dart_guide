/* we can collect classes
that .have .a . common .feature.but.are.not.genetically .related.
Multiple inheritance.can be provided in dart language.
thanks .to.interfaces. So.a.class.can.implement.more than
one . class. .However, it.cannot.extend. So. in dart.every.
class . can .be.derived. from. only one . class. .
Cannot . extend . a . second . class. .

Thanks . to. interfaces, .we. can. collect .classes


*/

// !An interface acts like a blueprint.
// !It defines what methods a class must implement, but not how they should be implemented.

abstract class Animal {
  void bark();
  void meow();
  void run();
}

class Cat extends Animal {
  @override
  void bark() {
    //! cat never bark , this way some functions implimentaion not neccessay while inherit abstracted super class , how can hanlde this scenario
    // TODO: implement bark
  }

  @override
  void meow() {
    // TODO: implement meow
  }

  @override
  void run() {
    // TODO: implement run
  }
}

//! solve this issue , we use interface ,

abstract class Bark {
  void bark();
}

abstract class Run {
  void run();
}

abstract class Meow {
  void meow();
}

class NewCat implements Meow, Run {
  //! use implement keywords

  @override
  void meow() {
    // TODO: implement meow
  }

  @override
  void run() {
    // TODO: implement run
  }
}
