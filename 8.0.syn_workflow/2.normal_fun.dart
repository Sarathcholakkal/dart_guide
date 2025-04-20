List<int> showNormal(int n) {
  print('Normal started');
  final list = <int>[];
  for (int i = 1; i <= n; i++) {
    print("i-->$i");
    list.add(i);
  }
  print("normal function ended");
  return list;
}

void main(List<String> args) {
  final a = showNormal(10);
  print("the last :${a.last}");

  print(".........................");
  print("the last :${a.first}");
  print(".........................");
  print("the last :${a.last}");
}

// Normal started
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
// normal function ended
// the last :10
// .........................
// the last :1
// .........................
// the last :10
