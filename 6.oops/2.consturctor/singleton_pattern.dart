class Singleton {
  static Singleton? _instance;

  // Private constructor
  Singleton._();

  // Factory constructor to implement singleton pattern
  factory Singleton.getInstance() {
    if (_instance == null) {
      _instance = Singleton._();
    }
    return _instance!;
  }
}

void main() {
  var singleton1 = Singleton.getInstance();
  var singleton2 = Singleton.getInstance();

  print(identical(singleton1, singleton2)); // Output: true (same instance)
}
