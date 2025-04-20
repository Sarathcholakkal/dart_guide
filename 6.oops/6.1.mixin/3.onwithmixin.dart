class Animal {
  String name;

  Animal(this.name);

  void move() {
    print('$name is moving');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);
}

mixin Greeter on Animal {
  void greet() {
    // Directly using the 'name' property from Animal
    print('Hello, I am $name!');
  }
}

class PersianCat extends Cat with Greeter {
  PersianCat(String name) : super(name);
}

void main() {
  PersianCat myCat = PersianCat('Luna');
  myCat.greet(); // Output: Hello, I am Luna!
  myCat.move(); // Output: Luna is moving
}
