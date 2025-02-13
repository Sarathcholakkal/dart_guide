// !positional parameter default required type, but  if needed convert as  optional use a [ ] .**

//!value is passed according to the position of arguments

// void main() {
//   add(2, 22);
//   add(10);
// }

// void add(int a, [int b = 4]) {
//   print(a + b);
// }

// ?Here we use arequired positional parameters.

// ?and b encapsulated by a square bracket is considered optional.

//?optional parameter need default value , other ways  it  hold null value it lead error .

//!NAMED PARAMETER

//! an named parameter by default optional.when we call the function, we don't want to keep the order of parameters,   instead use the name of each argument. using fancy brackets.
//!it is also an optional parameter by defualt , if it want to as required use required keyword

void main() {
  add(b: 10);
  add(b: 20, a: 30);
}

void add({int a = 10, required int b}) {
  print(a + b);
}
