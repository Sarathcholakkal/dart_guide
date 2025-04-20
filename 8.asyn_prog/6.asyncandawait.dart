//! USING ASYNC AND AWAIT

void main() {
  print("mom said to boy ,please buy milk from market");
  showResult();
  print("mom contiues to preapare");
  print("cake ready");
}

showResult() async {
  String result = await longPress();
  print(result);
}

Future<String> longPress() {
  print("boy goes to buy a milk error");
  Future<String> result = Future.delayed(Duration(seconds: 7), () {
    return "child comes home (this value from future)";
  });
  return result;
}


// Await the required amount of time for the to results come in. It is achieved by the await keyword.

// If the await keyword is used in the function, that function must come with the Async keyword.
// ( not the function which gives future result , but instead the function which receives future results.