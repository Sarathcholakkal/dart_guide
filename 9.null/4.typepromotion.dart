//! how dart convert nullble to non-nullable

void main() {
  String? a;
  print(a);
  //print(a.length); //this variable can be null so cant access it's value on opeation

  if (DateTime.now().hour < 12) {
    a = 'good moring';
  } else {
    a = 'good evennig';
  }

  print(a);
  print(a
      .length); //! else part comment , it's shows null error ,because a can be null or not ,not sure about it.
}

//Again if you use nullable value that not initialized , it get an error. because no value is assigned yet ,

// int findLength(String? a) {
//   return a.length; //!  we cant access it , need use condtional statement for access value
// }

int findLength(String? a) {
  if (a == null) {
    return 0;
    //throw 'null excetpiton" ;// or throw error  ,
  } else {
    return a
        .length; // here compailer can  confirmed this a not null , so can perfrome a opeaton that avilable for specified datatype , in few words here nullble type promoted to non-nullable type
  }
}
