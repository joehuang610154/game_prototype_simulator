import 'package:game_prototype_simulator/framework/entity_id.dart';

abstract class Entity {
  final EntityId id;

  Entity({
    String? id,
  }) : id = EntityId.generate();
}
