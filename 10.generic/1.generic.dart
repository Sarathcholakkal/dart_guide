// List class are generic type if you didn't  specify data type ,

void main() {
  List list = [
    "hello",
    2,
  ];

  list.add(1);
  list.add('hello');
  // if you create a list and make definition directly ,  I can also starting add elements using add method with different type
//  elements like int number and String  name, there is no error ..

// but actually problem , when we see in this list , it type is considered as dynamic type.
//if only integer value in list , it act accordingly.
// if it only string elements it act accordingly. At the point there is no problem

  // print(list[1].length);
  //! problem is when we try to find lenght of int value , its throw an error
//   Unhandled exception:
// NoSuchMethodError: Class 'int' has no instance getter 'length'.
// Receiver: 2
// Tried calling: lengt

  //if you specify type at time of decleartion , when add type that are not match will throw error at compailation
  // List<bool> boollist = [true, 2];//! element type int cant assign error

  // generic type  generally repersent in :
  //list: List<E>
  // map: Map<K,V>
  // we also generally use A,B,C for represent generic type
}
