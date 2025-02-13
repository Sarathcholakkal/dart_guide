//! LIST

// Flutter there is no direct array concept. we can use the list as an array.

// in Dart language, there are two types of lists, Fixed and growable.

// When we call it iterable means it is a growable type of collection.
//! FIXED LIST

void main() {
  List<int> fixed = List.filled(10, 0); // interger fixed list
  //? assign value to fixed list , fixed list support indexed based add
  fixed[0] = 1;
  fixed[1] = 1;
  fixed[2] = 1;
  fixed[3] = 1;
  //? if access or assign value beyond it's size it is thorw an invalid rande error.
  //! RangeErro(index): invalid value: not in inclusive range 0:10

  List<String> names = List.filled(10, "");
  names[0] = "sarth";
}
