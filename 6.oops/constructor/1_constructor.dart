// constructor is generally divided into there. constructor are methods whose names are the same as the class name. when we create a class object that method automatically Executes

//! 1.DEFUALT CONSTURETOR
class Car {
  String color = "";
  String brand = "";
  int manifactureYear = 1;
  void carRun() {
    print("car is run");
  }

  Car() {
    print("construtor is triggerd");
  }
}

//! PARAMETERIZED CONSTRUCTOR.
class Vehicle {
  String color = "";
  String brand = "";
  int manifactureYear = 1;
  void carRun() {
    print("car is run");
  }

  Vehicle(String this.color, String this.brand, int this.manifactureYear);
}

// when creating an object, specify its properties.==

// ! NAMED CONSTRUCTOR.

// if we need to call a different constructor for different needs we use a named constructor. Here we use named constractor only for student ID from the bench of another parameter.
class Student {
  int id = 0;
  String name = '';

  Student.idOnly(this.id);
  Student(this.id, this.name);
}


// constructor argument outside of the constructor body: with a constant value.

// ![459fea4623b90c517fbcbe2f32a7cbc5.png](file:///C:/Users/HP/.config/joplin-desktop/resources/0959e51260864f09bb975c45d41430ce.png)