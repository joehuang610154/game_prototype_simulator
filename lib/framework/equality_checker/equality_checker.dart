abstract class EqualityChecker<T> {
  bool equals(T oldValue, T newValue);
}

class NeverEqualityChecker implements EqualityChecker {
  @override
  bool equals(oldValue, newValue) => false;
}
