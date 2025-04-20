void main() {
  // Eager: List
  final list = List.generate(6, (index) {
    print('List item ${index + 1} created');
    return index + 1;
  });

  for (var item in list.take(2)) {
    print('List item $item used');
  }

  print('----------------------');

  // Lazy: Iterable
  final iterable = Iterable.generate(6, (index) {
    print('Iterable item ${index + 1} created');
    return index + 1;
  });

  for (var item in iterable.take(2)) {
    print('Iterable item $item used');
  }
}
