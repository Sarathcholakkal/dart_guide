// **Flat  Arrow.**
void main() {
  int differenceNumbers(int num1, int num2) {
    return num1 -
        num2; // !there is only one single line in return in the body of the function, we can simply use the flat arrow.
  }

  int multiplication(int num1, int num2) => num1 * num2;

  print(multiplication(2, 5).toString());

  //! Flat arrow with ternary operator.
  int smallNumber(int x, int y) => (x > y) ? x : y;
}
