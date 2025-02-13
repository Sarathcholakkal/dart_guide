import 'dart:io';

void main() {
  print("enter your name");
  String? name = stdin.readLineSync(); //! please not it's readLine
  print("enter your age");
  int age = stdin.readByteSync(); //! it's read byte for int value

  print("name:$name and age:d$age");
  print("enter birth year");
  int year = int.parse(stdin.readLineSync()!);
  print(year);

  print("enter mark percentage");
  double persentage = double.parse(stdin.readLineSync()!);
  print(persentage);
}
