import 'dart:async';

void main(List<String> args) {
  // StreamController<int> _streamcontroller = StreamController<int>();// single stream
  StreamController<int> _streamcontroller = StreamController<int>.broadcast();
  int value = 0;

  late StreamSubscription<int> _streamSubsription;
  late StreamSubscription<int> _streamsub2;

  _streamSubsription = _streamcontroller.stream.listen((event) {
    print(event);
  });
  _streamsub2 = _streamcontroller.stream.listen((event) {
    print(event);
  });

  Timer.periodic(Duration(seconds: 1), (timer) {
    if (value == 5) {
      _streamcontroller.close();
      _streamSubsription.cancel();
      _streamsub2.cancel();
      timer.cancel(); // Optional: Stop the timer
    } else {
      _streamcontroller.add(value++);
    }
  });
}



//  Problem: Unsubscribed streams are pointless (and can cause issues)
// 1. Data is lost
// If no one listens to the stream:

// Any data added via add(...) is discarded.

// The stream doesn't buffer or store values unless it's a broadcast stream with listeners.

// 2. Code side effects may run, but outputs go nowhere
// For example, in your timer:

// dart
// Copy
// Edit
// _streamcontroller.add(value++);
// You're adding values, but if no one listens:

// The values go nowhere.

// They are not printed, processed, or stored.

// 3. Resource Leaks / Wasted Work
// You're:

// Creating a StreamController

// Spinning up a Timer

// Running computations

// ➡️ But no listener means:

// CPU work is wasted

// The controller will close silently without purpose

// 4. Possible Exceptions (in some configurations)
// If using a single-subscription stream (the default), and you:

// Try to add data after it's canceled or closed

// Or don’t set up any listener before adding

// It may throw an error or fail silently, depending on how you handle it.