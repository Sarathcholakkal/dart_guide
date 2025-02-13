// **Switch case**

// we want to run the code according to the value we have given.

void main() {
  var day = "hello";
  switch (day) {
    case "monday":
      print("monday");
      break;
    case "sunday":
      print("sunday");
      break;
    case "tuesday":
      print("tuesday");
      break;
    case "hello":
      print("not a day");
      break;
    default:
      pragma("not a valid input");
  }

  // in this case, we can't use double numbers in the switch. in other words, it checks the type of value we are given
  // and switches the case types to be equal to each other. switch ==conditions are datatype specific==

  int value = 30;
  switch (value) {
    case 1.00:
      print("monday");
      break;
    case 2.00:
      print("sunday");
      break;
    case 2.23:
      print("tuesday");
      break;
    case 30.00:
      print("not a day");
      break;
    default:
      print("not a valid input");
  }
}
