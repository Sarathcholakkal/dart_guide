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


// mom said to boy, please buy milk from market
// boy goes to buy milk
// mom continues to prepare
// cake ready
// (after 7 seconds...)
// ❌ No milk in market


// 🧁 Real-World Analogy:
// Mom tells the boy to buy milk.
// If he comes back with milk → .then() prints success.
// If he finds no milk in the shop → .catchError() handles the failure