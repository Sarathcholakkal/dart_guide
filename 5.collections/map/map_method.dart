void main() {
//! 1......addAll // Adds all key/value pairs of other to this map.
  final planets = <int, String>{1: 'Mercury', 2: 'Earth'};
  planets.addAll({5: 'Jupiter', 6: 'Saturn'});
  print(planets);

//! 2 ..........add entries
  final gasGiants = <int, String>{5: 'Jupiter', 6: 'Saturn'};
  final iceGiants = <int, String>{7: 'Uranus', 8: 'Neptune'};
  planets.addEntries(gasGiants.entries);
  planets.addEntries(iceGiants.entries);
  print(planets);

  // clear
  // containe key
  //containeValue
  //forEach
  //remove
  //toString
  //update
  
  //updateAll
  final terrestrial = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  terrestrial.updateAll((key, value) => value.toUpperCase());
  print(terrestrial);
}
