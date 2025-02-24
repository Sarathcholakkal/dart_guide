import 'dart:math';

class RandomString {
  String? randomStr() {
    if (Random().nextBool()) {
      // random bool value generating
      return 'Hello';
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  final string1 = RandomString();
  // if (string1 == null) {
  //   print("it's is null");
  // } else {
  //   print(string1.randomStr());
  // }
  //!=========it should works
  if (string1.randomStr() == null) {
    print("it's is null");
  } else {
    print(string1.randomStr());
  }
}
