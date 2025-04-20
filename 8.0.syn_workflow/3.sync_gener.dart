Iterable<int> showNormal(int n) sync* {
  print('Generator started');
  for (int i = 1; i <= n; i++) {
    print("i-->$i");
    yield i; // yielding values instead of adding to a list
  }
  print("Generator ended");
}

void main(List<String> args) {
  final a = showNormal(10);
  print("the last :${a.last}"); // Still works, because Iterable has .last

  print(".....................................");

  print("the first :${a.first}"); // Still works, because Iterable has .last
  print(".....................................");
  print("the last :${a.last}");
}


//Generator started
// i-->1
// i-->2
// i-->3
// i-->4
// i-->5
// i-->6
// i-->7
// i-->8
// i-->9
// i-->10
// Generator ended
// the last :10
// .....................................
// Generator started
// i-->1
// the first :1
// .....................................
// Generator started
// i-->1
// i-->2
// i-->3
// i-->4
// i-->5
// i-->6
// i-->7
// i-->8
// i-->9
// i-->10
// Generator ended
// the last :10