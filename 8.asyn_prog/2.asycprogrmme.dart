// Synchronous: code is processed from top to bottom, so the next line is not passed until processed in the above line is finished.  This structure operations take a long time,

// Asynchronous: Different tasks are carried out at the same time, and work is divided into different parts all operations are carried out at the same time.
// This asynchronous  Operation allows to run the program while waiting for another process to finish.

//! real case scenario : a waiter compete customer order and move to next customer , this sync manner this not efficient way to run resturant

//! USING FUTURE CLASS

// **Asynchronous programing.**

// &nbsp;

// There is an asynchronous library, Here is a future class.

// create a future delayed function  call for 7 seconds,  then add a print statement in the method.

// Run the code these ways,

// 1. print boy goes to buy milk from, the market

// 2. they entered the method,  and the print boy went to buy milk. future delayed stars to work.

// 3. then mom continues to prepare ']

// . 4, the cake is ready.

// 5, future delay in complete works, and then goes to the next statement in the program print child comes home.

// Here is the Future. delayed created a  new flow branch or thread, to run a program parallel,

// in the future. delayed named constructor has two parameters one Duration second is an anonymous function with print statement.

void main(List<String> args) {
  print("mom said to boy buy milk from market");
  buyMilk();
  print("mom start to prepare cake");
  print("cake is ready");
}

void buyMilk() {
  print("boy  way to maket");
  Future.delayed(Duration(seconds: 10), () {
    print("actions that taken after delay will write in this async funtions");
  });
  print("boy returned from market with milk");
}


// mom said to boy buy milk from market
// boy  way to maket
// boy returned from market with milk
// mom start to prepare cake
// cake is ready
// actions that taken after delay will write in this async funtions//! this line will print after all progrmme executes


//In asynchronous program code, when the Future delayed is running another part of the code does not stay ideal, 
//it works parallel and makes its result. and   When the method executions finish it also shows the result. there is no need to wait to execute the method.
// it creates independent another thread to work parallel.