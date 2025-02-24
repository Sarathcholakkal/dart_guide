// **LATE**

// by putting late in front of a variable, we actually telling Dart we cannot assign a value to this variable. But we will assign a variable when the first opportunity gets, so don't make it null.( promise to the compiler  we will initialize this before use, avoid  null, )

// Use case: reduce memory expense, list of large data that initialized from API, when it uses it will initialize, that way mobile app work efficiently and device have better battery efficiency.

// Class create a  late variable but that is not initialized with a valu**e. and make sure that is not null.**

class Cat {
  //String? sound;// can be null no error
  //String sound;// will throw error because its non nullable
  late String sound; // make sure  the code work smoothy until gets value

  void soundDefintions(String sound) {
    this.sound = sound;
  }
}

void main(List<String> args) {
  final cat1 = Cat();
  //print(cat1.sound); throw an error if not assign value yet
  cat1.soundDefintions('myv');
  print(cat1.sound);
}
//!The LATE keyword has another power.

// You can use a late-on-field with an initializer to make that field lazy and run it exactly like a top-level variable or an initializer on a static field.
//  this can be very useful when running a space especially when running space is costly or unnecessary.


//! summary


// 1, both variables declared.

// 2.  When late assigning a value is initialized but memory space is not created. / normal created a memory space and assigned a null value.

// 3.  when it is used/ late create a memory space and assign its value./  normal replace null value to original.