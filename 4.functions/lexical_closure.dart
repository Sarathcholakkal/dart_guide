// void main() {
//   // Outer function
//   Function createCounter() {
//     int count = 0; // A variable in the outer function

//     // Inner function (the closure)
//     return () {
//       count++; // Modifying the variable from the outer function
//       return count;
//     };
//   }

//   // Create a counter using the closure
//   var counter = createCounter();

//   // Call the closure multiple times
//   print(counter()); // Outputs: 1
//   print(counter()); // Outputs: 2
//   print(counter()); // Outputs: 3
// }

//! what is lexical closue
// Closures are important because they can "close over" variables from their parent scope, meaning they can access and even modify those variables.

// ✅ What is a Closure?
// A closure is a function that "remembers" the variables from its outer scope even after the outer function has finished executing.

//  Every variable has scope.

// void main(List<String> args) {
//   int x = 2;
//   // print(zvar); not able to access
//   void ymethod() {
//     //print(zvar);not able to access
//     print(x);
//     var yvar = 10;
//     void zmethod() {
//       print(x);
//       print(
//           yvar); // this scope is called lexical variable scope ,fuction can access it's parent enclosure val

//       var zvar = 20;
//     }
//   }
// }

// What is lexical Closure.

// create  a function that have parameter and it  return a another function , that use it's parameter

Function sum() {
  return (int a) => a + 5;
}

void main() {
  // var b = sum();//!=============this code about return function work as variable
  // var result = b(5);
  // print(result);
  // sum() is called, and it returns the lambda function (int a) => a + 5;.
// b now holds this function, not a number.
// So, b is a function that adds 5 to its input.  and 5 input +5 =10
  //!==================== lexical closue concept ===========here below
  var output = newSum(200);
  //print( output); // output Closure: (int) => int no parameter passed to return function and output now hold return function

  var finaloutput = output(
      50); //! returned function in output variable stil remeber it's parent input value
  print(finaloutput);
}

Function newSum(int num1) {
  // return (int d) => d + 100;// parent closure value not taken for processing
  return (int d) => num1 + d; // here we use closure value
}
// that variable assign to another variable with another parameter value.

//What is a Lexical Closure?
// A lexical closure is a function that "remembers" and has access to variables from its lexical scope
//  (the scope where it was defined), even after the outer function has finished executing.
