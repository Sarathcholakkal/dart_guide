//! level 5: How can sent the future value from sync function return a common value wheather success or error(using when complete)

import 'dart:async';

main() {
  print("mom said to boy ,please buy milk from market");
  Future<String> resultdata = longPress();
  resultdata.then(
    (value) {
      print(value); // when value recieved it will run in main thread
    },
  ).catchError((newError) {
    print(newError);
  }).whenComplete(
    () {
      print("it will print both case ,error or sucess as finish message");
    },
  );

  print("mom contiues to preapare");
  print("cake ready");
}

Future<String> longPress() {
  print("boy goes to buy a milk error");
  Future<String> result = Future.delayed(Duration(seconds: 7), () {
    //  ? sync function will not able to use await infront of Future type
    return "child comes home (this value from future)";
    // throw "No milk in market";
  });
  return result;
}
