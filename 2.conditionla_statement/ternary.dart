void main() {
  int num1 = 10;
  int num2 = 20;
  //short use of the if statement is called the ternary operator. that allow writing if else in a single line.   it has a return value base on result of condition
  late int large;
  num1 > num2 ? large = num1 : large = num2;

//we can take out two ways, one is from the true or false part, and another way is to assign a ternary operator to another variable.both same:
  large = num1 > num2 ? num1 : num2;
  print(large);
// similarl dart have null check operator which have ?? mark
  String? name;
  String? subName = "dancer";
  String? message = name ?? subName;
  print(message);

  //null check operator checks first value is null or not if it is null it prints the second value. OR if the second value will be chance to null it prints the first value.
}
