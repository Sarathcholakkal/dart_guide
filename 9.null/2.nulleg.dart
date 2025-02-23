void main(List<String> args) {
  List<String> list1 = ['a', 'b', 'c']; // non nullable list with value
  List<String>? list2; // list can be null or list of string
  List<String?> list3 = ['a', 'b', null]; // list with nullable elements
  print(list1);
  print(list2);
  print(list3);
}
//!output

// [a, b, c]
// null
// [a, b, null]
