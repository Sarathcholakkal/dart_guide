//! create generic class

class Generic {
  List list = [];
  push(newElements) {
    list.add(newElements);
  }

  pop() {
    return list.removeLast();
  }
}

void main() {
  Generic list1 = Generic();
  list1.push(true);
  list1.push("hello");
  list1.push(1);
  print(list1.pop());
  print(list1.pop());
  print(list1.pop());
}
