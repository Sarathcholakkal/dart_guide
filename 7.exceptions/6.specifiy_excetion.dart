//! specifying exception while catch

class Cat {
  int age = 0;
  Cat(int age) {
    if (age < 0) {
      throw AgeException(message: "age cannot be negative exception");
    } else {
      this.age = age;
    }
  }
}

void main() {
  try {
    Cat cat1 = Cat(-1);
    print(cat1.age);
  } on AgeException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}
//! why generic catching a exeption  and specified catching diffrent:
//? 1. in just catching : only print/see it;s instance type or return value of tostirng
//? 2. in on speicided calss cathing we show error message that passed at time of throw or defualt
// //! adding  string method

class AgeException implements Exception {
  String message = "";
  AgeException({this.message = "age exception"});

  String toString() {
    return 'age exception Errror';
  }
}
