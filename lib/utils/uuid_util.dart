import 'package:uuid/uuid.dart';

class UuidUtil {
  static final UuidUtil _instance = UuidUtil._internal();
  factory UuidUtil() => _instance;
  UuidUtil._internal();

  final Uuid uuid = Uuid();

  String get() {
    return uuid.v4().replaceAll("-", "");
  }
}
