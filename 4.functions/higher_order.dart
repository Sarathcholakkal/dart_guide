//Higher order function that  take function as parameter . OR return a function.  it can do both  same time.

void main(List<String> args) {
  List<int> list1 = [2, 3, 5, 6];
//   then we want to print each  each variable one by one. for that we use "forEach" method.

// Here foreach method print elements one by one.

// Foreach method return a anonymous function.
  list1.forEach((el) => print(el)); // callback as annoumous function
  list1.forEach(
      callBack); // same as above , but function used in variable as callback

  forEachinDetails(list1);
}

void callBack(int element) {
  print(element);
}

// for each in details

void forEachinDetails(List<int> list1) {
  for (int i = 0; i < list1.length; i++) {
    print("element${list1[i]}");
  }
}
