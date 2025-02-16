import 'dart:collection';

import 'package:game_prototype_simulator/utils/uuid_util.dart';

class MockUuidUtil implements UuidUtil {
  final _queue = Queue<String>();

  @override
  String get() {
    if (_queue.isEmpty) return '';

    return _queue.removeFirst();
  }

  void add(String uuid) {
    _queue.add(uuid);
  }
}
