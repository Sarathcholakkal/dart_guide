//create another generic Type , add  class type <T>. here say that T type data come to this class, ==T mean any type Data, we don't Know.==
class GenericTypeClass<T> {
  List<T> list = [];

  void push(T newElement) {
    list.add(newElement);
  }

  T pop() {
    return list.removeLast();
  }

  // Generic method with type constraint
  double sumNumber<T extends double>(T a, T b) {
    return a + b;
  }
}

void main() {
  GenericTypeClass<int> list1 = GenericTypeClass<int>();
  list1.push(3);
  list1.push(1);
  list1.push(2);

  print(list1.pop()); // Output: 2
  print(list1.pop()); // Output: 1
  print(list1.pop()); // Output: 3

  // Using sumNumber with both int and double
  double sum1 = list1.sumNumber<double>(
      7, 1); //specify type of function inside generic class
  double sum2 = list1.sumNumber(5.5, 2.5); // Works with double

  print(sum1); // Output: 8.0
  print(sum2); // Output: 8.0
}
