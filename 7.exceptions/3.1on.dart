//! hadle the throw exception=================
// what is thorwing that will hold by e ,
// catch used to caught excetpion
// on used to specify exection type if know

import 'dart:math';

void main() {
  try {
    double number = takeSqure(-11);
    print(number);
  } on FormatException catch (e) {
    // known expcetion catch
    // e throwing excetion will avilable on e !FormatException: Number cannot be negative,//!on  FormatExcetpition  is just explicityl mentioned for clarity
    print(e.message);
  } catch (e) {
    // unknown exception catch if unknown exception not throwing
    print(e);
  }
}

double takeSqure(int i) {
  if (i < 0) {
    throw FormatException("Number cannot be negative");
  }
  return sqrt(i);
}
