//! what is exception
//Response of unexpected situations while code is running.

// void main() {
//   try {
//     int num = 50 ~/ 0; // Integer division by zero
//     print(num);
//   } on Exception {// on used for mangeing know excetion type
//     print('Cannot divide by zero');
//   }
// }

//! if dont type exception that throw how it would be manage
// void main() {
//   try {
//     int num = 50 ~/ 0; // Integer division by zero
//     print(num);
//   } catch (e) {
//     print(e);
//     print("there is an eroor");
//   } finally {
//     print("programe work whether is not error");
//   }
// }

//

import 'dart:math';

class NegativeValue implements Exception {
  final String Message;
  NegativeValue({required this.Message});
}

class PositiveValue implements Exception {
  final String message;
  PositiveValue({required this.message});
}

void main() {
  int min = 1;
  int max = 2;
  int zero = min + Random().nextInt(max - min);
  try {
    if (zero < 0) {
      throw NegativeValue(Message: "it's a negative value");
    } else {
      throw PositiveValue(message: "it's positive value");
    }
  } catch (e) {
    print(e.toString());
  }
}
