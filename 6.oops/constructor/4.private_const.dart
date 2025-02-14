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
}
