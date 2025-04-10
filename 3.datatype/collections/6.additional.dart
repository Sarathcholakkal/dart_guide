void main(List<String> args) {
  var myList = <int>[]; // empty list using var
  var mySet = <String>{};
  ;
  var myMay = <String, int>{};

  var firstList = [1, 2, 5];
  var secondList = [5, 6, 7];
  var lastList = [firstList, secondList];
  print(lastList); //[[1, 2, 5], [5, 6, 7]] output

  //! we want to see that in single new list using spread operator
  var compainedList = [...firstList, ...secondList];
  print(compainedList); //[1, 2, 5, 5, 6, 7] output
  //! exitsting list compained with another
  firstList.addAll(secondList);
  print(firstList);

  //? same things can perfrome in map ,a and set
  var map1 = {'model': "bmw"};
  var map2 = {"color": "green"};
  var map3 = {...map2, ...map1};
  print(map3);
  var set1 = {2, 3, 5};
  var set2 = {3, 5, 6, 7, 8};
  var set3 = {...set2, ...set1};
  print(set3);
}
