// !if super class constructor take  parameter

// *it must be  pass it from sub class , so that scenario  specifically need to write super keyword in sub class.

class Life {
  String name = "";
  int age = 1;
  Life(this.name, this.age) {
    print("Live const is triggered");
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
  Man.nameOnly(name) : super(name) {
    print("named man constrtor working now");
  }
}
// *now create  objects , without any problem.*

void main(List<String> args) {
  Man man1 = Man("jhone", 10);
  man1.printDetails();
}

// ==*when we doesn't pass value in sub class constructor, it make error.*==

// *![Screenshot 2024-01-05 055821.png](file:///C:/Users/HP/.config/joplin-desktop/resources/ec8cbe855acb4756bdfd0ee64fa02643.png)*

// * * *

// &nbsp;==NAMED CONSTRCTOR WORKING IN INHERITANCE IS PENDING.==

// &nbsp;
