import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  static const int defaultDebounce = 1000;

  final int milliseconds;
  Timer? _timer;

  Debouncer({this.milliseconds = defaultDebounce});

  void run(VoidCallback action) {
    close();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void close() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }
}
