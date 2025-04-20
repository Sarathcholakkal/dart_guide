class Point {
  final int x;
  final int y;
  const Point(this.x, this.y);
  printYear() {
    print(" $x  $y");
  }
}

void main() {
  final int runTimevalue = DateTime.now().year; // valure come from run time
  var newPoint = Point(4, runTimevalue);
  newPoint.printYear();

  var newPoint2 = Point(5, runTimevalue);

  newPoint = newPoint2;
  newPoint.printYear();
  // const  newPoint2 = Point(5, runTimevalue);  error while compile time becacuse expect compile time value at constructor

  newPoint2.printYear();

  var point3 = Point(6, runTimevalue);
  point3.printYear();
}

Car newCar = Car();

class Car {
  int value = 10;
}


//? Const Constructor: Required to use the const keyword when creating an object. 
// ?This ensures the object is both immutable and a compile-time constant.


//! Without Const Constructor: You can create immutable objects
// ! (by using final fields), but you cannot mark them as const or have them evaluated at compile-time.