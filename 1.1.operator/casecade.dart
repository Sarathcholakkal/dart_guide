// void main() {
//   List<int> list = [2, 1, 5, 3, 5];
//   var reversedlist = list.reversed.toList();
//   print(reversedlist);
//   reversedlist.addAll([3, 32, 65]);
//   reversedlist.map((e) => e + 1).toList();
//   print(reversedlist);
// }
void main() {
  List<int> list = [2, 1, 5, 3, 5];
  // var reversedlist = (list.reversed.toList()..addAll([3, 32, 65]))
  //     .map((e) => e + 1)
  //     .toList()
  //   ..add(3);

  var reversedlist = (list.reversed.toList()..addAll([3, 5]))
      .map((e) => e + 1)
      .toList()
    ..add(4);
  print(reversedlist);
  List<int> list2 = [3, 4, 6]
    ..sort()
    ..reversed
    ..addAll([54, 32])
    ..sort()
    ..map((e) => e + 1);
  print(list2);

  var list3 = ([3, 4, 6]..sort()).reversed.toList()
    ..addAll([54, 32])
    ..sort()
    ..map((e) => e + 1).toList();
}
