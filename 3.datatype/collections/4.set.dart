//!SET
void main() {
  // !set empty null value declaration.**
  Set<int> newset = {};
//
//!using consturtor
  Set<int> set = Set(); //set initialization,
  set.add(10);
  set.add(30);
  set.add(30);
  for (int s in set) {
    print(s);
  }
  //!set is similar to a list, but the difference is, that we can use an element only once in the set structure, which means we can't add the same number multiple times to "set".
  //!In a set structure, these different elements are not kept in order. in other words, we ==can not use the concept of index in operations related to set.

  //! METHODS IN SET
  //!set use contains a method, return a bool value.**

  if (set.contains(10)) {
    // if return bool value
    print(10); // this way cross check and print specific element from set
  }
  //! remove method will delete specifc value from set and return true if not available in list will return false
  bool isdeleted = set.remove(10);
  print("$isdeleted");

  //! using "add all" method, we can add more than one element or all elements using the add method. in the list or set.
  List<int> newlist = [
    3,
    5,
    6,
  ];
  set.addAll(newlist);
  for (int s in set) {
    print(s);
  }

  //! we can add a list value to the set.  using `set.from`  method.

  Set<int> set3 = Set.from(newlist);
}
