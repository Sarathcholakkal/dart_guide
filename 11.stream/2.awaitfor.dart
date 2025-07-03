import 'dart:async';

void main(List<String> args) async {
  // StreamController<int> _streamcontroller = StreamController<int>();// single stream
  StreamController<int> _streamcontroller = StreamController<int>();
  int value = 0;

  Timer.periodic(Duration(seconds: 1), (timer) {
    if (value == 5) {
      _streamcontroller.close();

      timer.cancel(); // Optional: Stop the timer
    } else {
      _streamcontroller.add(value++);
    }
  });

  var max = 0;
  // await for (final value in _streamcontroller.stream) {
  //   max = (value > max) ? value : max;
  // }

  await _streamcontroller.stream.forEach((value) {
    max = (value > max ? value : max);
  });
  print(max);
}



// "How is value being received from the stream if there is no listen()? Where does the stream output go?"

// ✅ Answer: You're listening using await for
// In Dart, the await for loop is an implicit listener on a stream. So you are listening to the stream — just not using .listen(...).

