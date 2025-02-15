// - In some Cases need to access variable and methods in class without  generating Objects. this case use Static Keyword.
// - in other words we define variable and methods  static in the class. It can access without generating objects.
// - variable/method in the class can create instance (object) , called instance variable/methods.
// - variable/method  in the class  not  accessed by object , it directly access by class name. variable name  called  Static variable. it is also know as class variable.
// - some cases we need a common values in all objects of class , that type of variable/functions created as  Static.
// Static variable dont take a value unitl they re used , and they dont;t take up memory , this keyword is not used in static methodds as we used before.
// what is instance variable

class Car {
  String color = "";
  String brand = "";
  static int totalOperation =
      0; // it is no longer instance variable it;s class variable ,no need create object to access
  void giveColor(String color) {
    print("$color");
    totalOperation++;
  }

  void giveBrand(String brand) {
    print("$brand");
    totalOperation++;
  }
}

main() {
  Car car1 = Car();
  car1.giveBrand("ford");
  car1.giveColor("red");
  print(Car.totalOperation);
  car1.giveBrand("ford");
  car1.giveColor("red");
  print(Car.totalOperation);
}
//!In the point of view of Memory management ,  It is efficiently use  memory without duplicate value when create each objects, same time we can access  value by calling with class name.
