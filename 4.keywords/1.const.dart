//**CONST**

//const is also final, at a compile time it is assigned a value and allocated in memory even if never used. it is created a concreated values.

void main() {
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

  const listconst1 = [1, 2];
  const listconst2 = [1, 2];
  if (listconst2 == listconst1) {
    //! const list with equal value always point same memeory that reaosn it's equal
    print("const list is equal");
  }
}
