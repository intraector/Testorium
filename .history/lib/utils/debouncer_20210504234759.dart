import 'dart:async';

class Debouncer {
  Debouncer(
    this.callback, {
    required this.milliseconds,
  }) {
    debounce(callback, milliseconds);
  }
  Function callback;
  int milliseconds;

  Timer? timer;
  void debounce(Function callback, int milliseconds) {
    timer?.cancel();
    timer = Timer(
      Duration(milliseconds: milliseconds),
      callback,
    );
  }
}
