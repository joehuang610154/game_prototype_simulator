import 'dart:collection';

import 'package:game_prototype_simulator/utils/uuid_util.dart';

class MockUuidUtil implements UuidUtil {
  final _queue = Queue<String>();

  @override
  String get() => _queue.removeFirst();

  void addAll(List<String> uuids) {
    _queue.addAll(uuids);
  }

  void add(String uuid) {
    _queue.add(uuid);
  }
}
