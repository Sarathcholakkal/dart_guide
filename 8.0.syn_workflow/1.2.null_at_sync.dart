Iterable<int> shows(int n) sync* {
  for (var i = 1; i <= n; i++) {
    if (i < 0) {
      yield 1;
    }
  }
}

void main() {
  var result = shows(5);

  if (result.isEmpty) {
    print("The result is empty.");
  } else {
    for (var value in result) {
      print(value);
    }
  }
}


// Key Points:
// sync* always returns an Iterable, even if it's empty.

// It never returns null unless you explicitly do so (which you shouldn't).

// You can safely call .isEmpty or loop over the result.

