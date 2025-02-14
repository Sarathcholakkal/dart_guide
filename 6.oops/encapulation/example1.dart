// example for using factory and getter and setter.

// class name rectangle, which calculates area and perimeter of the rectangle.

// constructor receives long edge and short edge values and it calculates area or perimeter according to the value given,
//!issue

//creating a private variable. when we use the private variable directly in the constructor there is a chance to get a negative number, that is not eligible for the calculates area.

// class Rectangle {
//   int _shortEdge = 0;
//   int _longEdge = 0;
//   Rectangle(this._longEdge, this._shortEdge);

// }
//!solutions
// To solve this issue we can use normal values on the constructor that are not assigned to the class.
// instead that value received from constructor directly given to as a function argument.

class Rectangle {
  int _shortEdge = 0;
  int _longEdge = 0;
  Rectangle(int longEdge, int shortEdge) {
    shortEdgeControl = shortEdge;
    longEdgeControl = longEdge;
  }

  void set shortEdgeControl(int value) {
    if (value > 0) {
      _shortEdge = value;
    } else {
      _shortEdge = 0;
    }
  }

  void set longEdgeControl(int value) {
    if (value > 0) {
      _longEdge = value;
    } else {
      _longEdge = 0;
    }
  }

  int calculateArea() {
    return _shortEdge * _longEdge;
  }
}

void main() {
  Rectangle newrectangel = Rectangle(10, -20);
  int area = newrectangel.calculateArea();
  print(area);
}
