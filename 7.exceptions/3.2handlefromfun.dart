import 'dart:math';

//! what happen if try catch block inside the function
void main() {
  double number = takeSquare(-11);
  print(number);
}

// double takeSqure(int i) {
//   try {
//     if (i < 0) {
//       throw FormatException("Number cannot be negative");
//     } else {
//       return sqrt(i);
//     }
//   } on FormatException catch (e) {
//     // known expcetion catch
//     // e throwing excetion will avilable on e !FormatException: Number cannot be negative,//!on  FormatExcetpition  is just explicityl mentioned for clarity
//     print(e.message);
//   } catch (e) {
//     // unknown exception catch if unknown exception not throwing
//     print(e);
//   } finally {
//     return 0;
//   }
// }

double takeSquare(int i) {
  double result = 0;
  try {
    if (i < 0) {
      throw FormatException("Negative number");
    }
    result = sqrt(i);
  } on FormatException catch (e) {
    print(e.message);
  } finally {
    print("Cleanup if needed");
  }
  return result;
}
