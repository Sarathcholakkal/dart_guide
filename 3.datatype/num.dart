void main(List<String> args) {
  int a = 1;
  int b = 3;
  print(a + b);
  double x = 6.7;
  print(x + a); // ? opereration will with int and double possible in dart

  // print(x.isOdd); some int specific method not avilable  double vice versa

  // ! method parse String to number type

  String value = '19';

  num n = int.parse(value);
  print(n);

// ! method  num to sting

  int num1 = 56;
  String s1 = num1.toString();
  print(s1);

  //! clamb method for set value in specific range . if it's higer it is set max value , lower it set low value

  double climpValue = 70;

  double outputClimpValue = climpValue.clamp(20, 55.5);
  print(outputClimpValue);

  //! ceil method for set nearest interger _greater  double value operation
  double ceilValue = 66.7;

  int ouputCeilValue = ceilValue.ceil();
  print(ouputCeilValue);

  //! floor  method for set nearest integer  smaller  only with double operation

  double floorValue = 55.9;
  int outputFloorValue = floorValue.floor();
  print(outputFloorValue);

  //! round  nearest intigert without any restriction

  double roundValue = 54.9;
  double roundValue2 = 33.3;

  print(roundValue2.round());
  print(roundValue.round());

  // ! truncate division    fracitional output of division must round of by nearest  lowest whole number

  int input1 = 2;
  int input2 = 3;

  int result = input2 ~/ input1;
  print(result);
}
