import 'package:game_prototype_simulator/framework/entity_id.dart';

abstract class Entity {
  final EntityId id;

  Entity({
    String? id,
  }) : id = id == null ? EntityId.generate() : EntityId(id: id);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Entity && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
