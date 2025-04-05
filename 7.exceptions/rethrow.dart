void main() {
  int i = -9;
  try {
    takeSquare(i);
  } on FormatException catch (e) {
    print("Caught Exception: ${e.message}");
    rethrow; // Rethrowing the exception for further handling
  } catch (e) {
    print("Unhandled Exception: $e");
  }
}

double takeSquare(int i) {
  if (i < 0) {
    throw FormatException("Number cannot be negative");
  }
  return i * i / 2;
}
