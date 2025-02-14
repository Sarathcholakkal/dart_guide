void main(List<String> args) {
  const List<int> range = [1, 2, 3, 5];
  //! range.add(56); error

  final List<int> num = [1, 2, 3];
  num.add(5);
  print(num[1]);
}
