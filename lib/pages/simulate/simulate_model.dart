import 'package:game_prototype_simulator/domain/game_simulation/entities/scene.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

class SimulateModel {
  Scene? currentScene;
  EntityId? focusedGameObjectId;

  SimulateModel._();

  factory SimulateModel.initialized() {
    return SimulateModel._();
  }
}
