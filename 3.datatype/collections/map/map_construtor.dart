void main() {
  Map<int, int> newMap = {};
  Map<int, String> anotherMap = Map();

  // map.from//It makes a shallow copy of the given map.
  final planets = <num, String>{
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    4: 'Mars'
  };
  final mapFrom = Map<int, String>.from(planets);

  print(mapFrom);

  //Useful when transforming a list or another//! iterable into a map.

  final moonCount = <String, int>{
    'Mercury': 0,
    'Venus': 0,
    'Earth': 1,
    'Mars': 2,
    'Jupiter': 79,
    'Saturn': 82,
    'Uranus': 27,
    'Neptune': 14
  };
  final map = Map.fromEntries(moonCount.entries);
}
