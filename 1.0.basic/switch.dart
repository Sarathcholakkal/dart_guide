//!Using continue with Labels in switch Cases
enum condtition {
  rainy,
  cloundy,
  dizzy,
  sunny,
}

void main(List<String> args) {
  var connection = condtition.rainy;

  switch (connection) {
    case condtition.cloundy:
      print("cloudy");
      break;
    case condtition.dizzy:
      print("dizzy");
      break;
    case condtition.rainy:
      print("rainy");
      continue rainy; // Jump to the label 'rainy'

    rainy: // Label for 'continue'
    case condtition.sunny:
      print("sunny");
      break;

    default:
      print("no case matching");
  }
}
