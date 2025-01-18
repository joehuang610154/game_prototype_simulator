import 'package:game_prototype_simulator/framework/equality_checker/equality_checker.dart';

class StringEqualityChecker implements EqualityChecker<String> {
  @override
  bool equals(String oldValue, String newValue) {
    return oldValue == newValue;
  }
}
