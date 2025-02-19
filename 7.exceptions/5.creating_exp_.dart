//! handleing throwed  exception

class Cat {
  int age = 0;
  Cat(int age) {
    if (age < 0) {
      throw AgeException();
    } else {
      this.age;
    }
  }
}

void main() {
  try {
    Cat cat1 = Cat(-1);
    print(cat1.age);
  } catch (e) {
    print(
        e); // without string method in excetpion class will print instace of that class: //!Instance of 'AgeException'

    // after adding to string class ouput like : age exception Error which is from toString method.

    print(e);
  }
}

// //! adding  string method

class AgeException implements Exception {
  String message = "Age Exception";
  AgeException({message});

  String toString() {
    return 'age exception Errror';
  }
}
