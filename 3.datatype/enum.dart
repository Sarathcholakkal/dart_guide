// Define the enum
enum Color { red, green, blue }

void main() {
  // 1. Access a value
  var myColor = Color.green;
  print(myColor); // Output: Color.green

  // 2. Compare enum values
  if (myColor == Color.green) {
    print('You selected green!');
  }

  // 3. Get the index (position)
  print(Color.red.index); // 0
  print(Color.green.index); // 1
  print(Color.blue.index); // 2

  // 4. List all values
  List<Color> colors = Color.values;
  print(colors); // [Color.red, Color.green, Color.blue]

  // 5. Get only the name
  print(Color.blue.name); // "blue"

  // 6. Use in switch-case
  switch (myColor) {
    case Color.red:
      print("Red");
      break;
    case Color.green:
      print("Green");
      break;
    case Color.blue:
      print("Blue");
      break;
  }
}
