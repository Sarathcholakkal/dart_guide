// entries → Iterable<MapEntry<K, V>>  // The map entries of this Map.

// isEmpty → bool  // Whether there is no key/value pair in the map.

// isNotEmpty → bool // Whether there is at least one key/value pair in the map.

// keys → Iterable<K> // The keys of this Map.

// length → int // The number of key/value pairs in the map.

// runtimeType → Type // A representation of the runtime type of the object.

void main() {
  Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};

  print(myMap.runtimeType); // Output: _Map<String, int>
}


// values → Iterable<V>// the values of map