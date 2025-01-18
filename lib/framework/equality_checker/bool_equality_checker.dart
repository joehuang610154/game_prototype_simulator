import 'package:game_prototype_simulator/framework/equality_checker/equality_checker.dart';

class BoolEqualityChecker implements EqualityChecker<bool> {
  @override
  bool equals(bool oldValue, bool newValue) {
    return oldValue == newValue;
  }
}
