import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:game_prototype_simulator/framework/equality_checker/equality_checker.dart';
import 'package:rxdart/rxdart.dart';

class _ModelNotifier<T extends Object> extends ChangeNotifier
    implements ValueListenable<T> {
  T _value;

  _ModelNotifier(T value) : _value = value;

  @override
  T get value => _value;

  set value(T newValue) {
    _value = newValue;
    notifyListeners();
  }
}

abstract class ViewModel<T extends Object> {
  late T state = initState();
  late final _ModelNotifier<T> _notifier = _ModelNotifier(state);

  T initState();

  Future<void> setState(FutureOr<void> Function(T model) callback) async {
    await callback(state);
    _notifier.value = state;
  }

  BehaviorSubject<S> obs<S>(
    S Function(T model) getter, [
    EqualityChecker? equalityChecker,
  ]) {
    var obx = BehaviorSubject.seeded(getter(state));

    _notifier.addListener(() {
      var equals = (equalityChecker ?? NeverEqualityChecker()).equals;

      if (!equals(obx.value, getter(state))) {
        obx.add(getter(state));
      }
    });

    return obx;
  }

  void dispose() {
    _notifier.dispose();
  }
}
