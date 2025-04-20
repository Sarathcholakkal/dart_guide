mixin key {
  void method();
  void newMethod() {
    print("new method");
  }
}

class Hello with key {
  @override
  void method() {
    // TODO: implement method
  }
}
