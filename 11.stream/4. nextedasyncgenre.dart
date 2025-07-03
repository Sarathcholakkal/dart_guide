void main(List<String> args) {
  asyncGenerator().listen(print);
}

var negativegenerator = Stream<int>.periodic(Duration(seconds: 2), (x) => -x);
Stream<int> asyncGenerator() async* {
  for (var i = 0; i < 5; i++) {
    await Future<void>.delayed(Duration(seconds: 1));
    yield i;
  }
  yield* negativegenerator;
}
