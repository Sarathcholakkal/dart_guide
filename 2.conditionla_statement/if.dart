// **if statements.**

// `if` check one condition and give output if it is true.

// `if else` check one condition and give a different output, both true and false cases.

// `else if` have stacked conditions, check each one from top to down, If any of the conditions are true it executes its own body.

void main() {
  int num1 = 4;
  int num2 = 2;
  if (num1 > num2) {
    print("true");
  } else {
    print("false");
  }
//multiple conditions check-in if the bracket is possible. we can use, "AND", and "OR" for this.
  int mark = 60;
  if (mark > 90 && mark < 100) {
    print("grade:A");
  } else if (mark > 90 && mark < 100) {
    print("grade:B");
  } else if (mark > 80 && mark < 90) {
    print("grade:C");
  } else if (mark > 70 && mark < 80) {
    print("grade:D");
  } else if (mark >= 60 && mark < 70) {
    print("grade:E");
  } else if (mark < 50) {
    print("failed");
  }
}
