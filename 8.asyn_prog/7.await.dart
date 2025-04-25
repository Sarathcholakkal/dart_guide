//! how can create give example using await

import '5.2.nested_then.dart';

void main(List<String> args) async {
  Map<String, dynamic> names = await getStundentName(10);

  List<String> courseName = await getCoureseInformation(names[0]);

  String grade = await getGrade(courseName[0]);
  print(grade);
}
