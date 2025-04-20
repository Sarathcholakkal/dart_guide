class Animal {
  void breathe() => print('Breathing');
}

//! constarianits on mixin
mixin Swimmer on Animal {
  // what is on keyword
  void swim() => print('Swimming');
}

class Fish extends Animal with Swimmer {}

class Shark extends Animal with Swimmer {
  @override
  void breathe() {
    // TODO: implement breathe
  }
}

void main() {
  Fish myFish = Fish();
  myFish.breathe(); // Output: Breathing
  myFish.swim(); // Output: Swimming
}


// The Shark class in your example shows a syntax error because the Swimmer mixin is constrained to only
// be applied to classes that extend Animal. You defined Swimmer with an on Animal constraint, meaning it
// can only be used by classes that are subclasses of Animal.

// Here's a breakdown of what’s happening: