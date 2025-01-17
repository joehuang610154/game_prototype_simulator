import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

@visibleForTesting
UuidUtil? testingUuidUtil;

class UuidUtil {
  factory UuidUtil() => testingUuidUtil ?? UuidUtil._internal();
  UuidUtil._internal();

  final Uuid _uuid = Uuid();

  String get() {
    return _uuid.v4().replaceAll("-", "");
  }
}
