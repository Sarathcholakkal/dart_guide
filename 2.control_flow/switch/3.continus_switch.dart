// **Switch case**

// we want to run the code according to the value we have given.
enum condtition { sunny, cloundy, dizzy, rainy }

void main() {
  var connection = condtition.sunny;

  switch (connection) {
    // case condtition.cloundy:
    //   print("cloudy");
    //   break;
    case condtition.dizzy:
      print("dizzy");
      break;
    case condtition.rainy:
      print("rainy");
      continue sunnyLabel; // jumps to the label sunnyLabel

    sunnyLabel:
    case condtition.sunny:
      print("sunny");
      break;

    default:
      print("no case matching");
  }
}
