void main() {
//    Some future constructors only send values or errors for the future.

// Eg: using value constructor we can return a value in the constructor that we passed. That information may be Mock data or instructions.

  var s1 = Future.value("hello");
  s1.then(
    (value) => print(value),
  );
  //example for error.   we know contains or returns an error, but it can print directly using Catch error.
  var s2 = Future.error("error");
  s2.catchError((error) => print(
      error)); // directly mention error if future.error constrcutor send a error
}
