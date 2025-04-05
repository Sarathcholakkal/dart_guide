class A {
  void methodA() {}
}

class B {
  void methodB() {}
  void methodC() {}
}

class C {
  void methodC() {}
}

class D implements A, B, C {
  @override
  void methodA() {
    // TODO: implement methodA
  }

  @override
  void methodB() {
    // TODO: implement methodB
  }

  @override
  void methodC() {
    // TODO: implement methodC
  }
  //!two method have same name in interface , only need to reimplemnt one and only
}
