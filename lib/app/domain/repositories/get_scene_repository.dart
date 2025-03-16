import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

abstract class GetSceneRepository {
  Future<Scene> get(EntityId id);
}
