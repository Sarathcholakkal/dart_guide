//! MAP.

// in map structure, data is held data in an unordered way like the set.

// the elements are kept in the form of key, value structure.

// we can hold data any type of data in values. But the key must be a unique type.

void main() {
  Map<String, int> countries = Map();
  countries = {"USA": 1, "india": 2};
  // assigning value to the map.
  countries["russia"] = 3;
  // print keys using for in
  for (String country in countries.keys) {
    print(country);
  }
  // print value using for in
  for (var country in countries.values) {
    print(country);
  }

  // print each entry=
  for (var country in countries.entries) {
    print("${country.value}${country.key}");
  }
  // or we can directly print map .

  print(countries);
}
