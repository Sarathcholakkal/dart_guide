Iterable<int> shows(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield 1;
  }
}

void main() {
  for (var value in shows(5)) {
    print(value);
  }

  var result = shows(5);
  for (var value in result) {
    print(value);
  }
}
