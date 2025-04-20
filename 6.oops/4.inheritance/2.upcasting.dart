class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  void makeSound() {
    print('Bark');
    // super.makeSound();
  }

  void fetch() {
    print('Fetching...');
  }
}

void main() {
  Dog myDog = Dog(); // Create an instance of Dog
  Animal myAnimal = myDog; // Upcasting to Animal
  Dog newdog = Dog();
  Animal newcasteddog = newdog;
  newdog.makeSound();

  myAnimal.makeSound(); // Output: Bark
  // myAnimal.fetch();
  // !Error: fetch() is not accessible
}
