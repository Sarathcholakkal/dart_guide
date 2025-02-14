void main() {
  // Outer function
  Function createCounter() {
    int count = 0; // A variable in the outer function

    // Inner function (the closure)
    return () {
      count++; // Modifying the variable from the outer function
      return count;
    };
  }

  // Create a counter using the closure
  var counter = createCounter();

  // Call the closure multiple times
  print(counter()); // Outputs: 1
  print(counter()); // Outputs: 2
  print(counter()); // Outputs: 3
}
