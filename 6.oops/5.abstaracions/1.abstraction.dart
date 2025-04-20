// - Object cannot be derived from abstract classes. that mean there is no object creation for abstracted class.
// - In abstracted class have two type of method(function) , 1.Normal  it  definition defined in abstract class it self. and 2. abstracted methods must be overridden by its subclasses.
// - if an abstracted method(function) used in class , that class must be defined as abstract class.
// - Purpose of creating abstracted class is gather the common methods to be used in one place(sub class ).
// - It means it collect all method in subclass, for a quick look and valunaverility and scalebility

import 'dart:io';

abstract class Shape {
  int givePeriemeter();
  int giveArea(); // contract method
  void giveInfromation() {
    // normal method
    print("this is a shape");
  }
}

class Square extends Shape {
  int? edge1;
  int? edge2;
  Square(this.edge1, this.edge2);
  @override
  int giveArea() {
    return 2 * (edge1! + edge2!);
  }

  @override
  int givePeriemeter() {
    return edge1! * edge2!;
  }
}

class Rectangle extends Shape {
  @override
  int giveArea() {
    // TODO: implement giveArea
    throw UnimplementedError();
  }

  @override
  int givePeriemeter() {
    // TODO: implement givePeriemeter
    throw UnimplementedError();
  }
}

//!============
void main() {
  Shape s1 = Square(4, 3);
  print(s1.giveArea());
}
