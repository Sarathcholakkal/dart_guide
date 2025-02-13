// - **Variable**: we need to store some Data in the memory of a computer, some others need the same data to recall for that we put some name when it's stored it's called a variable. ==when we name stored data, for recall it is called a variable.==
// - **Data Type**: we don't have the ==same amount of memory for storing text and numbers==, that kind of scenario datatype is going to handle. (int , map., list, double, string, boolean )
// - **Null:** All datatypes in Dart languages are accepted as objects and their default value is null.(In Java, the default value int is zero, double 0.0, string is  null, list null, boolean false).

// **Var:** var=variable, we do not know or we do not want to specify the data type of variable, then we use the datatype keyword as var .'====Var' type determined by first value is given with this keyword.(if u  give number to a variable it defined as a number).====

// Dynamic: Dart doesn't know anything about its type, it accepts all the types. it may lead to some errors due to the use wrong type in the wrong place.

void main() {
  print("hello" + "jasmin"); // string interpolation using +
  int number1 = 1;
  print(number1);
  number1 = 20; // reassing an intilaized value
  print(number1);
  //int number1 = 34;// number1 alerady decleard error , redeclearation error

  double number2 = 10.5;
  print(number2);
  number2 = 11;
  print(number2); // double have decimal point.

  int hexa1 = 0XAABB;
  print(hexa1); // int can also able to store hexa decimal code

  //! bool varible usually used for getting comparison..............

  bool isTrue = true;
  bool isFalse = false;
  bool checkValue() {
    if (number2 > number1) {
      return isTrue;
    } else {
      return isFalse;
    }
  }

  print(checkValue());
}
