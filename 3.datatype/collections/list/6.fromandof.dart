import 'dart:convert';

// void main() {
//   const jsonArray = '''
//   [
//     {"text": "foo", "value": 1, "status": true},
//     {"text": "bar", "value": 2, "status": false}
//   ]
//   ''';

//   final List<dynamic> dynamicList = jsonDecode(jsonArray);

//   final List<Map<String, dynamic>> fooData = List<Map<String, dynamic>>.from(
//       dynamicList
//           .where((x) => x is Map<String, dynamic> && x['text'] == 'foo'));

//   print(fooData); // [{text: foo, value: 1, status: true}]

// }

// void main() {
//   // A source list of integers
//   final original = [1, 2, 3, 'a'];

  // Create a new list using List.of()
  // List<int> copied = List<int>.of(original); //! throw error

//   final fromcopied = List<int>.from(original);//! dont have any type error

//   print(copied); // [1, 2, 3]
//   print(copied.runtimeType); // List<int>

//   copied.add(4);
//   print(copied); // [1, 2, 3, 4]
// }
