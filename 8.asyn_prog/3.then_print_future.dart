//! then print future value not the exact time we want 

main() {
  print("👩 Mom: Please buy milk from market");

  Future<String> resultdata = longPress(); // 🧒 Boy goes to market
  resultdata.then((value) {
    print(value); // ✅ Called when boy comes back (after 7 seconds)
  });

  print("👩 Mom: Continues to prepare");
  print("🎂 Cake ready");
}

Future<String> longPress() {
  print("👦 Boy: Goes to buy milk");
  return Future.delayed(Duration(seconds: 7), () {
    return "👦 Boy: I came back with milk (this is the Future value)";
  });
}


// Imagine again:

// 👩 Mom says: “Boy, go buy milk from the market.”
// 👦 The boy goes, and instead of waiting around, Mom attaches a sticky note on the door that says:
// “📝 When the boy returns, tell me!”

// That's exactly what .then() does! 💡



// step	Action
// 1️⃣	Mom asks boy to get milk
// 2️⃣	Boy leaves (async delay begins)
// 3️⃣	Mom attaches .then() note saying: “Let me know when boy returns”
// 4️⃣	Mom doesn't wait, continues preparing
// 5️⃣	Cake is ready
// 6️⃣	⏱ After 7 seconds: boy comes back, .then() gets triggered, and the value is printed


// ✅ Definition of .then() in Dart:
// .then() is a method used to handle the result of a Future once it's completed.
// It does not block or interrupt the flow of the program — instead, it allows the program to continue executing the next lines of code immediately, and runs the .then() callback later when the asynchronous task finishes.