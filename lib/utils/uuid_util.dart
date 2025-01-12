import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class UuidUtil {
  static UuidUtil _instance = UuidUtil._internal();
  factory UuidUtil() => _instance;
  UuidUtil._internal();

  @visibleForTesting
  static set instance(UuidUtil instance) {
    UuidUtil();
    _instance = instance;
  }

  final Uuid _uuid = Uuid();

  String get() {
    return _uuid.v4().replaceAll("-", "");
  }
}
