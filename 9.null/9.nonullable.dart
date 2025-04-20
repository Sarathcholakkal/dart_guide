void main() {
  int age; // Non-nullable local variable declared
  age = 25; // ✅ Initialized before use
  print(age); // ✅ Safe to use now
}
// void anotherfunction() {
//   int age;
//   print(age);      // ❌ Error: Non-nullable local variable 'age' must be assigned before it can be used.
// }