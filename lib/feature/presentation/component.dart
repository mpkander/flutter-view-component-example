import 'package:flutter/foundation.dart';

/// An abstract interface class for a component.
abstract class CounterComponent {
  /// Returns a [ValueListenable] that represents the current state of the counter.
  ///
  /// It's just an example. You can also use simple `setState` and that's ok.
  ValueListenable<int> get counterState;

  /// Called when the increase button is pressed.
  ///
  /// This method should increment the counter state and notify listeners of the change.
  void onIncreasePressed();

  /// Called when the decrease button is pressed.
  ///
  /// This method should decrement the counter state and notify listeners of the change.
  void onDecreasePressed();
}
