void main() {
  print("mom said to boy, please buy milk from market");

  Future<String> resultdata = longPress();

  resultdata.then((value) {
    print(value); // runs if future succeeds
  }).catchError((newError) {
    print(newError); // runs if future throws an error
  });

  print("mom continues to prepare");
  print("cake ready");
}

Future<String> longPress() {
  print("boy goes to buy milk");

  // Future that will fail
  Future<String> result = Future.delayed(Duration(seconds: 7), () {
    throw "❌ No milk in market";
  });

  return result;
}
