import 'dart:math';

void main(List<String> args) {
  const List<int> range = [1, 2, 3, 5];
  //range.add(2);//! below exception will throw if modifiy or add const list, that is the final and const biggest diff
//   Unhandled exception:
// Unsupported operation: Cannot add to an unmodifiable list
// #0      UnmodifiableListMixin.add (dart:_internal/list.dart:114:5)
// #1      main (file:///C:/Users/HP/Documents/dart_guide/4.0.keywords/final_const.dart:3:9)
// final_const.dart:3
// #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:295:33)
// #3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)

  //range = [3, 2]; // ! const varible onley set onec;

  final List<int> num = [1, 2, 3];
  num.add(5);
  print(num[1]);
  //num = [4, 5]; //! erro final varible only set once
  //const var data=10;//! canot specifiy var with const and final
  final date;
  date = DateTime.now();
  //=============
  final list1 = [7, 6];
  final list2 = [7, 6];

  if (list2 == list1) {
    print("equal");
  } else {
    print(
        "final list with same value not equal"); // ! even to list are same value , it's memory not stored in same location so that reason not equal
  }
  List<int> list3 = [7, 6];
  List<int> list4 = [7, 6];
  if (list4 == list3) {
    print("normal list equal");
  } else {
    print(
        "normal list not equal"); // ! even to list are same value , it's memory not stored in same location so that reason not equal
  }
  list1.add(20);
  print(list1);

  const listconst1 = [1, 2];
  const listconst2 = [1, 2];
  if (listconst2 == listconst1) {
    //! const list with equal value always point same memeory that reaosn it's equal
    print("const list is equal");
  }
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
//**CONST**

//const is also final, at a compile time it is assigned a value and allocated in memory even if never used. it is created a concreated values.

