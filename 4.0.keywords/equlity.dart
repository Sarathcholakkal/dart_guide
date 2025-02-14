void main(List<String> args) {
  var list1 = [1, 2, 3];
  var list2 = [1, 2, 3];
  print(list2 == list2); //! true, because their values (the lists) are equal
  print(
      identical(list2, list1)); //! false, because they are different instances
}
