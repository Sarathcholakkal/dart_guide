// *Assertion Operator.**

// if you are sure the nullable value is not null, you can use  the assertion operator (!),

// if you are sure 100% it is null, then you can use this operator, in case it is null, the program gets the error.

// nullable variable with a default value must be a nonnull value.
void main(List<String> args) {
  List<int?> listwithnull = [2, 3, null];
  int? canbenullbutnownot;
  canbenullbutnownot = 1;
  int num1 = canbenullbutnownot;
  int num2 = listwithnull.first!;
  int num3 = canbeNull()!;
}

int? canbeNull() {
  return 3;
}
