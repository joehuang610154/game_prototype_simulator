import 'package:flutter/foundation.dart';
import 'package:game_prototype_simulator/framework/entity.dart';
import 'package:game_prototype_simulator/framework/equality_checker/equality_checker.dart';

class EntityListEqualityChecker<T extends Entity>
    implements EqualityChecker<List<T>> {
  @override
  bool equals(List<T> oldValue, List<T> newValue) {
    return listEquals(
      oldValue.map((v) => v.id).toList(),
      newValue.map((v) => v.id).toList(),
    );
  }
}
