//!example continues
Future<Map<String, dynamic>> getStundentName(int id) {
  print("student number is: #$id");
  return Future.delayed(Duration(seconds: 3), () {
    return {"id": id, "name": "Rose"};
  });
}

Future<List<String>> getCoureseInformation(String studnetName) {
  print("studnet:$studnetName courses");
  return Future.delayed(Duration(seconds: 5), () {
    return ['dart', 'flutter', 'java'];
  });
}

Future<String> getGrade(String courseName) {
  return Future.delayed(Duration(seconds: 5), () {
    return "$courseName:70";
  });
}

void main() {
  String studentName = '';
  getStundentName(10).then((Map value) {
    print(value);
    // studentName = value["name"]; //   assign stundent name from map using key
    //! instead this pass  using addtional variable we can pass it directly:
    getCoureseInformation(value['name']).then((value) {
      print(value);
      getGrade(value[0]).then((value) {
        print(value);
      });
    });
  });
}
//! output
// student number is: #10
// {id: 10, name: Rose}
// studnet:Rose courses
// [dart, flutter, java]
// dart:70


// Nested .then() calls (callback hell):

// Each then() call is nested within the previous one, which makes the code look messy and harder to follow, especially as the number of asynchronous calls increases.

// Error Handling:

// Since all the .then() calls are nested, handling errors at each level requires using .catchError() on each promise, which can clutter the code.

// Code Readability:

// It’s hard to visually track the flow of execution because the async tasks are chained. It doesn’t have the clarity of synchronous code, which makes understanding what happens next difficult.