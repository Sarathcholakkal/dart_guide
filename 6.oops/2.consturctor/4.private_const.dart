// A private constructor in Dart is a constructor that cannot be accessed outside the class because its name starts with an underscore (_).

// 1️⃣ Why Use Private Constructors?
// Prevents class instantiation from outside.
// Restricts inheritance (cannot be extended).
// Used when a class only contains static members (e.g., constants, utility methods).
//Used for Singleton Patterns (ensures only one instance of a class exists).

class MyClass {
  MyClass._(); // Private constructor
}

// 4️⃣ Private Constructor for Static Variables
// A private constructor is useful when all class members are static, meaning no need to create an object.

class AppConfig {
  static const String appName = "My App";
  static const String version = "1.0.0";

  AppConfig._(); // Private constructor prevents instantiation
}

void main() {
  print(AppConfig.appName); // ✅ Output: My App
  print(AppConfig.version); // ✅ Output: 1.0.0

  //
  //
  //!  singleton class calls nullable static  implementation
  var obj1 = Singleton();
  var obj2 = Singleton();

  print(identical(obj1, obj2)); // ✅ true — same instance
  //!private consturcrto  using static method
  var e = Example.createInstance(); // ✅ Works fine
  //! final static single tone impliemention

  var db1 = DatabaseService();
  var db2 = DatabaseService();

  print(identical(db1, db2)); // ✅ true – both refer to the same instance
}

class Singleton {
  static Singleton? _instance;

  // 🔐 Private constructor
  Singleton._internal();

  // ✅ Factory constructor can use private constructor
  factory Singleton() {
    _instance ??= Singleton._internal();
    return _instance!;
  }
}

class Example {
  Example._(); // Private constructor

  static Example createInstance() {
    return Example._(); // ✅ Can be used here
  }
}

class DatabaseService {
  static final DatabaseService _instance =
      DatabaseService._internal(); // created only once

  DatabaseService._internal(); // ✅ private constructor

  factory DatabaseService() {
    return _instance; // 👈 always return same instance at runtime
  }
}
