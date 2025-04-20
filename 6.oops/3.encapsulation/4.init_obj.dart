//! how we update obj of an class  from another class without use constructor

// class New {
//   Car car2 = Car();
//   car2.color = "Red";  // ❌ ERROR: Not allowed here
// }
// The error occurs because car2.color = "Red"; is not inside a function or constructor. Dart does not allow direct modifications of instance variables at the class level.

class Jeep {
  String color = "";
  String brand = "";
  int _manufactureYear = 1;

  void set yearChange(int year) {
    _manufactureYear = year;
  }

  int get giveYear => _manufactureYear;

  int get giveYearAgain => _manufactureYear;
}

// Class that accesses the Jeep instance
class New {
  Jeep Jeep2 = Jeep();

  void updateJeepDetails() {
    Jeep2.color = "Red";
    Jeep2.brand = "Toyota";
    Jeep2.yearChange = 2022;

    print("Jeep details updated:");
    print("Color: ${Jeep2.color}");
    print("Brand: ${Jeep2.brand}");
    print("Year: ${Jeep2.giveYear}");
  }
}

void main() {
  Jeep Jeep1 = Jeep();
  Jeep1.yearChange = 2020;
  print(
      "Manufacture Year: ${Jeep1.giveYear}"); // Use the getter instead of accessing private variable

  New newJeepInstance = New();
  newJeepInstance.updateJeepDetails();
}
