void main(List<String> args) {
  Car newCar = Car();
  newCar.accelarate();
  newCar.steer();
  print(newCar._speed);
}

class Car {
  late int _speed;
  void accelarate() {
    _speed = 100;
  }

  void breaker() {
    _speed = 0;
  }

  void steer() {
    _speed = _speed - 10;
  }
}
