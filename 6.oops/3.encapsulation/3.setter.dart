// Public variables.

// We can easily access our variable outside the file that normally written, there are no securities concerns.

// Private variables.

// if the variable declare as private , it's only use in with in the file which  is declared. that variable not visible outside of file.

class Car {
  String color = "";
  String barnd = "";
  int _manifactureYear = 1;
  void set yearChange(int year) {
    this._manifactureYear = year;
  }

  int get giveYear {
    return _manifactureYear;
  }

  int get giveyearagin => _manifactureYear;
}

//! this need to call from another class

//! SETTER

// To assign a new value to private variable from outside of  file.

// defining set method in file which is same file private variable declared.
//  void set yearChange(int year) {
//     this._manifactureYear = year;
//   }
//!calling of the setter from outside of the file.

// obj.yearChange=2020;
//!Getter.
//  int get giveYear {
//     return _manifactureYear;
//   }

//! use getter
//car1.giveYear;

// To read the value of a private variable from outside of the file.

// Declaration of set method in the same file the private variable declared.
