void main(List<String> args) {
  var typeinf = "hello";
  var hello = 45;
  var lis = [1, 3, 5];

  print(typeinf.runtimeType);
  print(hello.runtimeType);
  print(lis.runtimeType);

  dynamic hai = "heee";
  dynamic hai1 = 4;
  dynamic hai2 = ["mangp"];
  print(hai2.runtimeType);
  print(hai.runtimeType);
  print(hai1.runtimeType);

  // ? what is reason using dynamic rather than var
}

//========================================================
int topLevelVar = 10; // Top-level variable
