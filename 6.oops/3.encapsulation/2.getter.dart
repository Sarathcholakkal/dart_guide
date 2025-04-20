import '3.setter.dart';

void main(List<String> args) {
  Car car1 = Car();
  car1.yearChange = 2020; // set methodd allows you to assign a value
  print(car1.giveYear);
  car1.giveYear;
  // print(car1._manifactureYear); //! not able to access here  private variable because it's anther file
}
