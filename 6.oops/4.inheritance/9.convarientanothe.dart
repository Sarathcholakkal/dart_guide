class Food {
  final String name;

  Food(this.name);
}

class Meat extends Food {
  Meat(String name) : super(name);
}

class Vegetables extends Food {
  Vegetables(String name) : super(name);
}

abstract class Animal {
  void eat(covariant Food food); // Allows subclasses to use specific types
  String get species;
}

class Carnivore extends Animal {
  @override
  String get species => 'Carnivore';

  @override
  void eat(Meat food) {
    print('$species eats meat: ${food.name}');
  }
}

class Herbivore extends Animal {
  @override
  String get species => 'Herbivore';

  @override
  void eat(Vegetables food) {
    print('$species eats vegetable: ${food.name}');
  }
}

void main() {
  var lion = Carnivore();
  var rabbit = Herbivore();

  var steak = Meat('Steak');
  var carrot = Vegetables('Carrot');

  lion.eat(steak); // ✅ Works
  // lion.eat(carrot);  ❌ Error: Expected Meat

  rabbit.eat(carrot); // ✅ Works
  // rabbit.eat(steak); ❌ Error: Expected Vegetables
}
