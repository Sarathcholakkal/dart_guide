Iterable<int> showNegativeGenerator(int n) sync* {
  print('negative generator started');
  for (int i = 1; i <= n; i++) {
    print("i=> ${-i}");
    yield -i;
  }
  print("negative generator ended");
}

Iterable<int> showPostiveGenerator(int n) sync* {
  print('negative generator started');
  for (int i = 1; i <= n; i++) {
    print("i=> ${i}");
    yield i;
  }
  yield* showNegativeGenerator(n);
  print("postive generator ended");
}

void main() {
  print("Main started");

  var sequence = showPostiveGenerator(3);
  print("generated last: ${sequence.last}");
  // for (var value in sequence) {
  //   print("yielded => $value");
  // }

  print("Main ended");
}

//! another example
Iterable<int> flatten(Iterable<Iterable<int>> lists) sync* {
  for (Iterable<int> list in lists) {
    yield* list;
  }
}
