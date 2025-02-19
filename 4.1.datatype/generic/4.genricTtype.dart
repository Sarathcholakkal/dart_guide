//create another generic Type , add  class type <T>. here say that T type data come to this class, ==T mean any type Data, we don't Know.==
class GenericTypeClass<T> {
  List<T> list = [];
  push(T newElements) {
    list.add(newElements);
  }

  T pop() {
    return list.removeLast();
  }

  double sumNumber<T extends double>(T a, T b) {
    return a + b;
  }
}

void main() {
  GenericTypeClass<int> list1 = GenericTypeClass();
  list1.push(3);
  list1.push(1);
  list1.push(2);
  print(list1.pop());
  print(list1.pop());
  print(list1.pop());
}
