// Null safety in Dart is a feature that helps developers avoid unexpected errors caused by null values. It distinguishes between nullable and non-nullable variables, ensuring that developers have control over which variables can hold null values.

// Key Points About Null Safety:
// Memory and Variables:

// Memory is divided into blocks where data is stored.
// Variables hold memory addresses, but if they are null, they don't point to valid data.//! null that represent th 0th index of memory ,that place not exitst.
// Nullable vs. Non-Nullable:

// Non-nullable variables must always have a value (int x = 10;).
// Nullable variables can hold null (int? x = null;).
// Handling API Data:

// Data from APIs may not always be available, leading to null values.
// Null safety ensures the app doesn’t crash when dealing with missing data.
// Purpose of Null Safety:

// It doesn’t eliminate null but controls where null is allowed.
// Prevents runtime crashes by enforcing proper checks.
// How to Use Null Safety in Dart?
// Using Nullable Variables:

//!........................
// String? name; // Can be null  
// Using Null Assertion (!):
//!........................
// String? name;
// print(name!); // Throws an error if name is null  
// Using Default Values (??):
//!.........................
// String? name;
// print(name ?? "Default Name"); // Prints "Default Name" if name is null  
// Using Late Initialization (late):

//!.........................
// late String title;
// title = "Developer"; // Must be assigned before use  
// Conclusion:
// Null safety gives developers control over null values, reducing errors and improving code reliability. By distinguishing nullable and non-nullable variables, Dart ensures stronger and safer applications. 🚀