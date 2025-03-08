import 'package:equatable/equatable.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';

class EntityId extends Equatable {
  final String id;

  const EntityId({required this.id});

  factory EntityId.generate() {
    return EntityId(id: UuidUtil().get());
  }

  @override
  String toString() => id;

  @override
  List<Object?> get props => [id];
}
