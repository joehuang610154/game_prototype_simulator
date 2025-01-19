import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
import 'package:game_prototype_simulator/framework/entity.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/utils/list_extension.dart';

class Scene extends Entity {
  String name;
  List<GameObject> gameObjects = [];

  Scene._(this.name);

  factory Scene.create(String name) {
    return Scene._(name);
  }

  GameObject? findGameObject(EntityId? gameObjectId) {
    return gameObjects.where((go) => go.id == gameObjectId).firstOrNull;
  }

  void addGameObject() {
    gameObjects = gameObjects.added(GameObject.create());
  }

  void rename(String newName) {
    name = newName;
  }
}
