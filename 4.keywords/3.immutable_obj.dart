class Point {
  final int x, y;

  // Const constructor
  const Point(this.x, this.y);
}

void main() {
  // ✅ Immutable object, created at runtime
  final point1 = Point(2, 3);

  // ✅ Immutable object, created at compile time
  const point2 = Point(2, 3);
  const point3 = Point(2, 3);

  print('point1: (${point1.x}, ${point1.y})');
  print('point2: (${point2.x}, ${point2.y})');

  print('\nComparisons:');

  print('point1 == point2 → ${point1 == point2}'); // true → values are equal
  print(
      'identical(point1, point2) → ${identical(point1, point2)}'); // false → different memory
  print(
      'identical(point2, point3) → ${identical(point2, point3)}'); // true → same memory
}
