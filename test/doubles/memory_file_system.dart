import 'package:game_prototype_simulator/utils/file_system.dart';

class MemoryFileSystem implements FileSystem {
  final Map<String, dynamic> _storage = {};

  @override
  Future<T> read<T>(
    String filename, {
    initialData,
    T Function(dynamic json)? parse,
  }) async {
    if (!_storage.containsKey(filename)) {
      _storage[filename] = initialData;
    }
    return _storage[filename];
  }

  @override
  Future<void> write(String filename, dynamic data) async {
    _storage[filename] = data;
  }
}
