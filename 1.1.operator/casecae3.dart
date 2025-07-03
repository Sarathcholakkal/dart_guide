class Car {
  void start() {
    print("hello printing");
  }

  void drive() {
    print('started to drive');
  }

  void stop() {
    print("stop drive");
  }
}

void main() {
  Car car = Car()
    ..start()
    ..drive()
    ..stop();
}
