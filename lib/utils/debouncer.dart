import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  Debouncer(
    this.callback, {
    @required this.milliseconds,
  }) {
    debounce(callback, milliseconds);
  }
  Function callback;
  int milliseconds;

  void debounce(Function callback, int milliseconds) {
    Timer timer;
    if (timer != null) {
      timer.cancel();
    }
    timer = Timer(
      Duration(milliseconds: milliseconds),
      callback,
    );
  }
}
