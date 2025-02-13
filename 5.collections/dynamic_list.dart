// !DYNAMIC LIST

// when initialising the list, won't specify it is length.
void main() {
  // List<int> num = [];
  // nums[0]=10; //!  in the dynamic list, we can't assign value directly. it makes a range error.
  // num.add(10);
  // num.add(11);
  // num.add(12);
  // num.add(13);
  // num.add(14);
  // print(num[0]);
  // num[1] = 40;
  // print(num[1]);//! assigned value can be reassgin or access using index

  //! methods in the list.

  List<int> dynamicList = [10, 20, 30, 40, 50, 60, 70];

//? clear method deletes all the elements in the list.
  dynamicList.clear();
  print(dynamicList);

//? remove list delete, given value in the list. if that list has multiple values, it won't delete all, instead, it deletes  value given.
  List<int> num = [10, 20, 30, 40, 50, 60, 70];
  num.remove(20);
  print(num);
  //? remove  At, delete the value  in the list that the index specified>
  num.removeAt(1);
  print(num);
}
 














// * * *

// `The "Is not empty"`  method returns true or false output, the `last` method prints the last element of the list. The `first` method prints the first element of the list. similarly `is empty`, the list is empty or not, if it is empty it passes true value other ways false.

// ![Screenshot 2024-01-03 013600.png](file:///C:/Users/HP/.config/joplin-desktop/resources/9e3dc03e543c43f59ec3fef03312bdf0.png)

// taking the response as a string.

// ![Screenshot 2024-01-03 013713.png](file:///C:/Users/HP/.config/joplin-desktop/resources/cab598bac642467e95e8292ff9dffce9.png)

// * * *

// `reverse` order of the list. and it is temporary.

// ![Screenshot 2024-01-03 015759.png](file:///C:/Users/HP/.config/joplin-desktop/resources/553ec529329f40eeae12794fb6d0641a.png)

// ![Screenshot 2024-01-03 020039.png](file:///C:/Users/HP/.config/joplin-desktop/resources/6bb61e9d047c45aa9166a78cf8ddf1ca.png)

// * * *

// `Contains` method- check whether the element is contained or not we specified.

// ![Screenshot 2024-01-03 022735.png](file:///C:/Users/HP/.config/joplin-desktop/resources/0bfaa7a587bc470d93c1d3db58ea5183.png)

// * * *

// to print specific index value elements,  use the `elementAt` method.

// ![Screenshot 2024-01-03 023508.png](file:///C:/Users/HP/.config/joplin-desktop/resources/6107961d136d4e32bc0a15948d0a8527.png)

// * * *

// ![Screenshot 2024-01-03 023941.png](file:///C:/Users/HP/.config/joplin-desktop/resources/b0fd24816a8247eebbdfd6c1981d8f66.png)

// similarly, index used of print element value using the index.