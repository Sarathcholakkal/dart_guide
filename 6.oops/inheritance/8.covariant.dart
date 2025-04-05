class Animal {
  final String name;
  Animal({required this.name});
  void whatiam() {
    print("i am animal");
  }

  void chase(Animal a) {}
}

class Mouse extends Animal {
  Mouse() : super(name: 'jerry');
}

class Cat extends Animal {
  Cat() : super(name: 'tom');

  void chase( covariant Mouse m){// overide method stricly enforce use specid sub class object
  

  }
}
