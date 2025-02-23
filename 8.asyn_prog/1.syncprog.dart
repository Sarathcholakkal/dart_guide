// 1. print boy goes to buy milk from ,market

// 2. the entered to method ,  and print boy goes to buy milk.

// 3. then sleep  run

// 4. then mom continues to prepare ']

// 5. cake is ready.

void main(List<String> args) {
  print("mom said to boy buy milk from market");
  buyMilk();
  print("mom start to prepare cake");
  print("cake is ready");
}

void buyMilk() {
  print("boy  way to maket");
  Future.delayed(Duration(seconds: 10));
  print("boy returned from market with milk");
}

//! this method works but code are not completed

// mom said to boy buy milk from market
// boy  way to maket
// boy returned from market with milk
// mom start to prepare cake
// cake is ready
