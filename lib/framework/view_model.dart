import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx.dart';

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

  Rx<S> obs<S>(S Function(T model) getter) {
    var obx = Rx.seeded(getter(state));

    _notifier.addListener(() {
      if (!_equals(obx.value, getter(state))) {
        obx.add(getter(state));
      }
    });

    return obx;
  }

  void dispose() {
    _notifier.dispose();
  }

  bool _equals<S>(S oldValue, S newValue) {
    if (oldValue is List<EntityId> && newValue is List<EntityId>) {
      return listEquals(
        oldValue.map((v) => v.id).toList(),
        newValue.map((v) => v.id).toList(),
      );
    }

    return newValue == oldValue;
  }
}
