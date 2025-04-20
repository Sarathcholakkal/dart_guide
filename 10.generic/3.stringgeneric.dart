class StringGeneric {
  List<String> list = [];
  push(newElements) {
    list.add(newElements);
  }

  String pop() {
    return list.removeLast();
  }
}

void main() {
  StringGeneric list1 = StringGeneric();
  //list1.push(true);//! we can only add  string type , becuase it's string generic
  list1.push("hello");
  //list1.push(1);
  list1.push("naeen");
  list1.push("reshmika");
  print(list1.pop());
  print(list1.pop());
  print(list1.pop());
}
