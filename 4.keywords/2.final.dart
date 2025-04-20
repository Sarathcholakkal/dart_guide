import 'dart:math';

void main(List<String> args) {
  final List<int> num = [1, 2, 3];
  num.add(5);
  print(num[1]);
  //num = [4, 5]; //! erro final varible only set once
  //const var data=10;//! canot specifiy var with const and final
  final date;
  // date = DateTime.now();
  //=============
  final list1 = [1, 2];
  final list2 = [1, 2];

  print(list1 == list2); // true - value equality
  print(identical(list1, list2)); // false - different objects in memory

  // ===================
  final value = 1;
  final value2 = 1;
  if (value2 == value) {
    print("final value are same address");
  } else {
    print("not same value");
  }
}

// ==*generally called immutable variable.*==

// In some cases we want the value we gave to the variable to remain the same, in such cases we use final, and Const .keywords, and there is a slight difference in those.

// In other words , after assigning a value to variable , we do not want value to be changed later.

// * * *

// **FINAL**

// after the value is assigned, the memory allocation is only accessed.

// ==**the final variable is only set once**==, which means when we declare a final variable until you use the value it doesn't allocate memory space,
// once a  variable value is assigned, it can't change, the value assigned at run time.
//
