import 'dart:math';

//! what happen if try catch block inside the function
void main() {
  double number = takeSqure(-11);
  print(number);
}

double takeSqure(int i) {
  try {
    if (i < 0) {
      throw FormatException("Number cannot be negative");
    } else {
      return sqrt(i);
    }
  } on FormatException catch (e) {
    // known expcetion catch
    // e throwing excetion will avilable on e !FormatException: Number cannot be negative,//!on  FormatExcetpition  is just explicityl mentioned for clarity
    print(e.message);
  } catch (e) {
    // unknown exception catch if unknown exception not throwing
    print(e);
  } finally {
    return 0;
  }
}
