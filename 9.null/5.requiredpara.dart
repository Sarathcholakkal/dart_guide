//! explaine why required parameter

void main() {}

// int sumNumbers({int a, int b, int c}) {// this named optinoal parameter  not conirmed is user pass or not that is reason error
//   return a + b + c;
// }

// int sumNumbers({int? a, int? b, int? c}) {
//   return a + b + c;// cant performe opeation on null value
// }

int sumNumbers({int a = 0, int b = 0, int c = 0}) {
  return a +
      b +
      c; // when we give default value ,problem will disappear,  if user not enter any value ,it's processed with  default value
}
