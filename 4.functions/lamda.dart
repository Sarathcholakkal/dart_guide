//Lamdas/ anonymous functions are functions without name. But it has return type or not , parameter or not.

/*

Lambdas are functions without a name.
Normally, when we were talking about functions, we described
as functions that return values and those that do not.
Or we talked about functions that take parameters or not. */

void sum(int a, int b) {
  print(a + b);
} // normal function with name , we need to remove the function name and define as varible below

var funtions1 = (int a, int b) {
  print(a + b);
};

// instead var we can use type as Function

Function function2 = (int a, int b) {
  print(a * b);
};

Function addfunction =
    (int a) => a + 10; // with return value and flat arrow function

void main() {
  print(
      function2); //output Closure: (int, int) => Null, because no value give to parmaeter
  function2(3, 5);
  print(addfunction(23));
}
