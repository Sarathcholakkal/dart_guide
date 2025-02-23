void main() {
  print("stated");
  Future.delayed(Duration(seconds: 0), () {
    print("printed in 0 delays");
  });

  print("finished");
}
//!output
// stated
// finished
// printed in 0 delays//! even it's zero seconds why this happends

// when we mention its future ,progrmme perceived  it as future strcture and run it's seperate thread
