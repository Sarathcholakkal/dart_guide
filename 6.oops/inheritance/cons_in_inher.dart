// !USING CONSTRUCTOR METHOD IN INHERITANCE.

// *super class  constructor.*

import 'dart:io';

class Live {
  Live() {
    print("live constructor is triggered");
  }
}
// *sub class constructor.*

// class Human extends Live {
//   Human() {
//     print("human constructor is triggered");
//   }
// }
// *create a object  for subclass*

// void main(List<String> args) {
//   Human human1 = Human();
Human human2 = Human();
//  OUTPUT
// live constructor is triggered
// human constructor is triggered
// live constructor is triggered
// human constructor is triggered
//
// each time create a object of sub class , super class object is exicuted then sub class constructor follows.

// in other words , sub class have all the properties and methods found in it's super class , so super class  constructor exicutes before sub class constructor  exicutes .

// !SUPER KEYWORD WITH CONSTRUCTOR.*
//! ACTUAL CONSTURCTOR CODE ,WE DONT SEE IT DIRECTLY BUT ITS EXISTS
class Human extends Live {
  Human() : super() {
    print("human constructor is triggered");
  }
}
