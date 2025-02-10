import 'package:game_prototype_simulator/app/domain/entities/game_object.dart';
import 'package:game_prototype_simulator/framework/entity.dart';

class SceneSnapshot extends Entity {
  String description;
  SceneSnapshot parent;
  List<GameObject> gameObjects;

  SceneSnapshot._({
    required this.description,
    required this.parent,
    required this.gameObjects,
  });
}
