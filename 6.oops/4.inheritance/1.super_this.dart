class Animal {
  String name;

  Animal(this.name);
  int value = 5;

  void makeSound() {
    print('Animal sound');
  }

  void jumb() {
    print("the $name will jumb");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name); // Calls the superclass (Animal) constructor
  int value = 10;
  // Overriding the superclass method
  @override
  void makeSound() {
    super.makeSound(); // Calls the superclass version of makeSound()
    print('Dog barks');
    super.makeSound();
    print(value);
    print(super.value);
  }
}

void main() {
  Dog dog = Dog('Buddy');
  dog.makeSound();
  dog.jumb();
}
