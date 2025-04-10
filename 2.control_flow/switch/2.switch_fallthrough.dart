// **Switch case**

// we want to run the code according to the value we have given.

void main() {
  var connection = condtition.rainy;

  //!==============the empy case enclose =================

  switch (connection) {
    case condtition.cloundy:
      print("cloudy");
      break;
    case condtition.dizzy:
      print("dizzy");
      break;
    // case condtition.rainy:
    case condtition.sunny:
      print("sunny");
      break;

    default:
      print("no case matching");
  }
}

enum condtition { sunny, cloundy, dizzy, rainy }
