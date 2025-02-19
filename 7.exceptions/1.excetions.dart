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
void main() {
  try {
    int num = 50 ~/ 0; // Integer division by zero
    print(num);
  } catch (e) {
    print(e);
    print("there is an eroor");
  } finally {
    print("programe work whether is not error");
  }
}

//
