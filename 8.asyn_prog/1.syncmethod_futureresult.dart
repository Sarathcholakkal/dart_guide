//! How sync  method handle future function
void main(List<String> args) {
  print("mom said to boy buy milk from market");
  buyMilk();
  print("mom start to prepare cake");
  print("cake is ready");
}

void buyMilk() {
  print("boy  way to market");
  Future.delayed(Duration(seconds: 10), () {
    print("boy brought milk from market");
  });
  print("boy returned from market with milk");
}


// mom said to boy buy milk from market
// boy  way to market
// boy returned from market with milk
// mom start to prepare cake
// cake is ready
// (boy brought milk from market)  <-- this appears after 10 seconds



//  Real-World Logic You Want:
// You want:

// Mom tells boy to go.

// Boy goes.

// Mom waits till he’s back. 

// Then starts preparing the cake.



// ❗ Problem:
// The line Future.delayed(..., () {}) starts a delay, but your function doesn’t wait for it.

// So the lines after it run immediately.

// The delayed callback (boy brought milk from market) runs later in the background.




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