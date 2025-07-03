// 🧩 Set of Practice Problems (Easy to Advanced)
// 🟢 Beginner Level
// Create a Person class with properties like name, age, and city. Use cascade to initialize it.

// Write a Car class with methods like start(), drive(), and stop(). Use cascade to call all these methods in a single expression.

// Create a List<int> and use cascade to:

// Add elements.

// Sort the list.

// Print it.

class Person {
  String? name;
  int? age;
  String? city;
  void dispaly() {
    print("$age$city$name");
  }
}

void main(List<String> args) {
  Person person = Person()
    ..name = 'nsard'
    ..age = 34
    ..city = 'helo'
    ..dispaly();
}
