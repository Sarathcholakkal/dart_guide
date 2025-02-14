void main(List<String> args) {
  final a = showGenerator(4); // not generated  yet becuase value not printed
  print(a);
}

Iterable<int> showNegativeGenerator(int n) sync* {
  print('Negative Generator started');
  for (var i = 1; i <= n; i++) {
    print('-i -> ${-i}');
    yield -i;
  }
  print('Negative Generator ended');
}

Iterable<int> showGenerator(int n) sync* {
  print('Generator started');
  for (var i = 1; i <= n; i++) {
    print('i -> $i');
    yield i;
  }

  yield* showNegativeGenerator(n);
  print('Generator ended');
}


// In Dart, a synchronous generator is a function that produces a sequence of values lazily, 
// one at a time, using the sync* keyword. You use the yield keyword to return each value from 
// the generator. Synchronous generators are particularly useful when you want to produce values on-demand in a synchronous context.
