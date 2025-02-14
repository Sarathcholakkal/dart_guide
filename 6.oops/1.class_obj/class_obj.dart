// in Dart, Everything  is abstracted as an Object.

// Classes are the system that stores methods and variables/properties together.

// variable store data, we use such as name, surname, and age.

// method is a system that provides tasks such as adding, and collecting data.

class Car {
  String color = "";
  String brand = "";
  int manifactureYear = 1;
  void carRun() {
    print("car is run");
  }
}

void main(List<String> args) {
  Car car1 = Car();
  car1.color = "red";
  car1.brand = "BMW";
  car1.manifactureYear = 1992;
  car1.carRun();
  Car car2 = Car();
  car2.color = "red";
  car2.brand = "BMW";
  car2.manifactureYear = 1992;
  car2.carRun();
}
