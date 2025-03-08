import 'package:equatable/equatable.dart';

abstract class ValueObject extends Equatable {
  const ValueObject();

  @override
  bool? get stringify => true;
}
