//! create an exception class throw unhanlded way

class Cat {
  int age = 0;
  Cat(int age) {
    if (age < 0) {
      throw AgeException();
    } else {
      this.age = age;
    }
  }
}

void main() {
  Cat cat1 = Cat(1);
  print(cat1.age);
}
// !Unhandled exception:
// Instance of 'AgeException'
// #0      new Cat (file:///C:/Users/HP/Documents/dart_guide/7.exceptions/4.creating_exp_class.dart:5:7)
// 4.creating_exp_class.dart:5
// #1      main (file:///C:/Users/HP/Documents/dart_guide/7.exceptions/4.creating_exp_class.dart:13:14)
// 4.creating_exp_class.dart:13
// #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
// #3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)

class AgeException implements Exception {
  String message = "Age Exception";
  AgeException({message});
}
