extension ListExt<T> on List<T> {
  List<T> added(T value) => toList()..add(value);
  List<T> removed(T value) => toList()..remove(value);
}
