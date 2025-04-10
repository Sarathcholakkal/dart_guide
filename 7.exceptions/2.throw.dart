import 'dart:math';
//! throw the expception but not handling

void main() {
  double number = takeSqure(-3);
  print(number);
  // print(
  //     "Number:${number.toStringAsFixed(3)}"); // Number:8.000 after coma how many digit need to apply mention here

  //!  what if we sent negative number to this funcitonlity : it print NaN(not a number),how would do you solve this problem:
  takeSqure(-1); // excetpion will thorw here
}

double takeSqure(int i) {
  // if (i < 0) {
  // throw FormatException("Number cannot be negative");
  // }
  return sqrt(i);
}
