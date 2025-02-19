//! MAP.

// in map structure, data is held data in an unordered way like the set.

// the elements are kept in the form of key, value structure.

// we can hold data any type of data in values. But the key must be a unique type.

void main() {
  Map<String, int> countries = Map();
  // countries = {"USA": 1, "india": 2};
  // // assigning value to the map.
  // countries["russia"] = 3;
  // // print keys using for in
  // for (String country in countries.keys) {
  //   print(country);
  // }
  // // print value using for in
  // for (var country in countries.values) {
  //   print(country);
  // }

  // // print each entry=
  // for (var country in countries.entries) {
  //   print("${country.value}${country.key}");
  // }
  // or we can directly print map .

  // print(countries);
  Map<String, dynamic> map1 = {};
  map1['id'] = 1;
  map1['name'] = 'David';
  map1['age'] = 25;
  //! 1............cosntructors
  // Map newMap = Map.from(countries);
  Map fromMap = Map.from({'new': 1});
  Map mapfromEntries = Map.fromEntries(map1.entries);
  print(mapfromEntries);
  //!2..............
  var list = [3, 5, 6];
  var mapFromIterable = Map.fromIterable(list, key: (item) {
    return "$item";
  }, value: (item) {
    return "${item + 1}";
  });
  //!3.........
  map1.update(
    'id',
    (value) => 10, //! specified id will update or replace using this functions
  );
  print(map1);
  //!1..........
}
