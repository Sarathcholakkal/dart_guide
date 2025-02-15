// !if super class constructor take  parameter and named construtor

// *it must be  pass it from sub class , so that scenario  specifically need to write super keyword in sub class.

class Life {
  String name = "";
  int age = 1;
  Life(this.name, this.age) {
    print("Live const is triggered");
  }
  Life.nameOnly(name) {
    print("named life constrtor working now");
  }
  void printDetails() {
    print(" the name is:$name and the age is $age");
  }
}

class Man extends Life {
  Man(name, age) : super(name, age) {
    //! sub class constructor pass to super class constructor
    print("human const is triggered");
  }
  Man.nameOnly(name) : super.nameOnly(name) {
    // !this way we call named super constructor from sub class

    print("named man constrtor working now");
  }
}
// *now create  objects , without any problem.*

void main(List<String> args) {
  Man man1 = Man("jhone", 10);
  man1.printDetails();
}
