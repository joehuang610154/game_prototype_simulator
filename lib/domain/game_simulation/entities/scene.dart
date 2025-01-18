import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
import 'package:game_prototype_simulator/framework/entity.dart';

class Scene extends Entity {
  String name;
  List<GameObject> gameObjects = [];

  Scene._(this.name);

  factory Scene.create(String name) {
    return Scene._(name);
  }

  void addGameObject() {
    gameObjects.add(GameObject.create());
  }

  void rename(String newName) {
    name = newName;
  }
}
