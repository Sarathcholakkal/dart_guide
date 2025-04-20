//!sync function return a future value
// Synchronous: code is processed from top to bottom, so the next line is not passed until processed in the above line is finished.  This structure operations take a long time,

// Asynchronous: Different tasks are carried out at the same time, and work is divided into different parts all operations are carried out at the same time.
// This asynchronous  Operation allows to run the program while waiting for another process to finish.

//In asynchronous program code, when the Future delayed is running another part of the code does not stay ideal,
//it works concurrent  and makes its result. and   When the method executions finish it also shows the result. there is no need to wait to execute the method.

main() {
  print("👩 Mom: Please buy milk from the market.");
  Future<String> resultdata = longPress();
  print(resultdata); // 🤨 Just a note saying "I'll bring the milk later"
  print("👩 Mom: Let me start preparing the cake.");
  print("🎂 Cake is ready!");
}

Future<String> longPress() {
  print("👦 Boy: Goes to the market...");
  return Future.delayed(Duration(seconds: 7), () {
    return "👦 Boy: I'm back with the milk!";
  });
}

// 👩 Mom tells 👦 boy to buy milk.

// 👦 The boy leaves — but doesn't come back immediately.

// The main function doesn’t wait — it immediately moves on and says:Instance of 'Future<String>'
