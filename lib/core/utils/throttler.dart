import 'package:flutter/material.dart';

class Throttler {
  Throttler({required this.delay});

  final Duration delay;
  bool _isThrottling = false;

  void run(VoidCallback action) {
    if (_isThrottling) return; // Ignore if throttling

    _isThrottling = true; // Start throttling
    action();

    // Reset after the delay
    Future.delayed(delay, () {
      _isThrottling = false;
    });
  }
}
