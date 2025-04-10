void main() {
  // for (int i = 0; i <= 10; i++) {
  //   print(i);
  // }

//! In Dart simplify ' for', to increase readability using the IN keyword,  String city denotes one element type in and indicates the element name we choose.

  // List<String> cities = ["london", "manchester", "oxford"];
  // for (String city in cities) {
  //   print("$city");
  // }

//!BREAK

// !if wanna stop the execution of a loop certain condition, we choose the break statement  Here we want to stop the execution of the loop, when the "I"  value more than 5. In that case, use the break. ==**Once the break is executed it escapes its parent loop.**==
  // int i = 0;
  // for (i; i <= 10; i++) {
  //   if (i >= 5) {
  //     break;
  //   }
  // }
  // print(i);

// * * *

//!CONTINUE

//! in certain conditions, we want to ==stop the execution of the rest body of the lo==op, we want to start again from the loop, and that scenario we use continues.

  // for (int j = 0; j <= 10; j++) {
  //   if (j > 5) {
  //     print(j);
  //   } else {
  //     print(j < 5);
  //     continue;
  //   }
  // }

// ?0 to 4 = true. and continue the loop.

// ?5= false. and continue the loop.

// ?6 to 10 = print i value.

// * * *

//!NEXTED FOR LOOP

  // for (int k = 0; k < 10; k++) {
  //   for (int l = 0; l < 10; l++) {
  //     print("$k  $l");
  //   }
  // }

//! Label for loop
  // outerLoop:
  // for (int y = 0; y < 10; y++) {
  //   for (int z = 0; z < 10; z++) {
  //     print("$y  $z");
  //     if (z == 7 && y == 4) {
  //       break outerLoop;
  //     }
  //   }
  // }

//!here we loop named as outeloop , because want to exit  identify it is  outerloop.**

// !when inner loop execution completed with  zvalue 7 and outeloop y 4 , it come out inner loop body and check that j  value is 7 and y value 4, if it is true , break is exicues.**

// !WHILE LOOP

//? while the loop needs to declare the control variable first
// ?to void infinity looping,use increment or decrement statement at the end of body execution==,

  // int control = 0;
  // while (control < 5) {
  //   print("this is$control");
  //   control++;
  // }

//!DO WHILE LOOP

//? first,initialize a control variable, then do the execution body first and increment or decrement then check while condition for the next body execution.

  // int x = 0;
  // do {
  //   print("dart programming");
  //   x++;
  // } while (x < 5);

//! practice one find a divisible number
  for (int i = 0; i <= 100; i++) {
    if (i % 2 == 0 && i % 3 == 0) {
      print("it is divisble by 6:$i");
    }
  }
}
