import 'dart:collection';

import 'package:game_prototype_simulator/utils/uuid_util.dart';

class MockUuidUtil implements UuidUtil {
  final _queue = Queue<String>();

  @override
  String get() => _queue.removeFirst();

  void setGenerateUuids(List<String> generatedUuids) {
    _queue.addAll(generatedUuids);
  }
}
