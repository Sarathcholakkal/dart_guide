// This class declares an external method.
// The actual implementation is assumed to come from somewhere else.
class Calculator {
  // Declaration only – no method body
  external int add(int a, int b);

  // You can also have normal methods
  void sayHello() {
    print("Hello from Calculator");
  }
}

class Digital implements Calculator {
  @override
  int add(int a, int b) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  void sayHello() {
    // TODO: implement sayHello
  }
}

void main() {
  Calculator calc = Calculator();

  // // Call normal method
  // calc.sayHello(); // ✅ Works fine

  // // Try to call the external method
  // print(calc.add(5, 3)); // ❌ Runtime error: NoSuchMethodError
}
