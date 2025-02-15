//! IMMUTABLE CLASS

//! normal class are mutable
class ProductMuttable {
  int id;
  String name;
  ProductMuttable({required this.id, required this.name});
}

void main() {
  ProductMuttable product1 = ProductMuttable(id: 2, name: "siva priya");
  product1.id =
      2; //! can able to reassign field that alerdy intilaized ,this reason called mutable

  //now we can't change variable accessed through object. it shows error for final intilized instance fields
  Product produc2 = Product(4, "hello");
  //produc2.id = 39;//!error final field cannot be changed
  Product produc3 = Product(4, "hello");
  if (produc3 == produc2) {
    print("equal");
  } else {
    print("not equal");
  } //? here the product not equal , diffent address even constuctor is const or not, if we add const with constructor
  //?we can mention const with obj type that is advatange using const construtor
  //? which means  obj with same value will be repersent same memory address

  const Product newproduct1 = Product(5, "soap");
  const Product newproduct2 = Product(5, "soap");
  if (newproduct1 == newproduct2) {
    print("equal"); // ? result is equal
  } else {
    print("not equal");
  }
}

// As progrmme grow we dont need to reassing field or variable of class
//we don't want it change , once  value assigned to that variable , variable continues that values. for that define that variable as final.

class Product {
  final int id;
  final String name;
  const Product(this.id, this.name);
}
