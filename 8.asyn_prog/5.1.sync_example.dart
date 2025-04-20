//There will be student information,
// and this student's number and name will be kept.
//This information will be used together with a map structure
//and the student name will be displayed after 3 seconds
//according to the specified student number.
//Now that there is a map structure, the student number
//and name will be kept with the key value relationship.
// And here, of course, we will make use of future structures,
//as the information will be shown after a certain period of time,
// not immediately.
//In the continuation of this, we will show the courses taken by
//the student in a list by using this incoming student's name.
// And for this, we will need 4 seconds of time.
//Finally, we will prepare a function that takes the first lesson
// that this student has taken and shown as a parameter and
//displays the grade that the student has received from this

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

void main() {
  String studentName = '';
  getStundentName(10).then((Map value) {
    // print(value);
    // studentName = value["name"]; //   assign stundent name from map using key
    //! instead this pass  using addtional variable we can pass it directly:
    getCoureseInformation(value['name']).then((value) {
      print(value);
    });
  });

  //getCoureseInformation(studentName);
}
