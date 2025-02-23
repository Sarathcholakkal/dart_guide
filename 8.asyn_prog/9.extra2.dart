void main(List<String> args) {
  bigNumber().then((value) {
    print(value);
  }).catchError((error) => print(error));
}

Future<int> bigNumber() {
  int bigNumber = 0;
  for (int i = 0; i < 10000000; i++) {
    bigNumber = i;
  }
  // return bigNumber; //! will throw an error , int not match Future<int>
  // return Future.value(bigNumber);
  throw 'not calculated'; // commient return and throw an erro for checking
}

// !Why Use Future.value()?
// Ensures Compatibility – If a function is expected to return a Future<T>, but you already have a value, Future.value() ensures the return type remains Future<T>.
// Avoids Unnecessary Asynchronous Execution – It does not delay execution like Future.delayed() or await Future(() => value).
// Useful in Testing and Mocking – Can be used to simulate async functions without real delays.
