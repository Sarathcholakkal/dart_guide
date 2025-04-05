//! level 1 one  sync funtion that not  use future value in it/
// main() {
//   print("mom said to boy ,please buy milk from market");
//   longPress();
//   print("mom contiues to preapare");
//   print("cake ready");
// }

// //! Here future method not excecute before that programme execution ended
// longPress() {
//   print("boy goes to buy a milk");
//   Future.delayed(Duration(seconds: 7), () {
//     print("child comes home");
//   });
// }

//! level 2 a sync funtion which is return a future value , still it can't print exact future in main progamme instead only shows future instance..........................................................................
// main() {
//   print("mom said to boy ,please buy milk from market");
//   Future<String> resultdata = longPress();
//   print(resultdata);//? print future object there not exact return value, main stil sync function that not changed to Futuer function
//   print("mom contiues to preapare");
//   print("cake ready");
// }

// Future<String> longPress() {
//   print("boy goes to buy a milk");
//   Future<String> result = Future.delayed(Duration(seconds: 7), () {//? sync function will not able to use await infront of Future type
//     return "child comes home";
//   });
//   return result;
// }

// //! level 3 a sync funtion which is return a future value , still it print future exact future value in execution when the result arrives from function after some time it's called..........................................................................
// main() {
//   print("mom said to boy ,please buy milk from market");
//   Future<String> resultdata = longPress();
//   resultdata.then(
//     (value) {
//       print(value);// when value recieved it will run in main thread
//     },
//   );

//   print("mom contiues to preapare");
//   print("cake ready");
// }

// Future<String> longPress() {
//   print("boy goes to buy a milk");
//   Future<String> result = Future.delayed(Duration(seconds: 7), () {
//     //? sync function will not able to use await infront of Future type
//     return "child comes home (this value from future)";
//   });
//   return result;
// }

//! level 4: what if the future value from sync function will be an error

// main() {
//   print("mom said to boy ,please buy milk from market");
//   Future<String> resultdata = longPress();
//   resultdata.then(
//     (value) {
//       print(value); // when value recieved it will run in main thread
//     },
//   ).catchError((newError) {
//     print(newError);
//   });

//   print("mom contiues to preapare");
//   print("cake ready");
// }

// Future<String> longPress() {
//   print("boy goes to buy a milk");
//   Future<String> result = Future.delayed(Duration(seconds: 7), () {
//     //? sync function will not able to use await infront of Future type
//     // return "child comes home (this value from future)";
//     throw "No milk in market";
//   });
//   return result;
// }
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
