import 'package:game_prototype_simulator/app/domain/entities/game_object.dart';
import 'package:game_prototype_simulator/app/domain/entities/scene_snapshot.dart';
import 'package:game_prototype_simulator/framework/entity.dart';

class Scene extends Entity {
  String name;
  List<GameObject> gameObjects;
  List<SceneSnapshot> snapshots;

  Scene._({
    required this.name,
    required this.gameObjects,
    required this.snapshots,
  });

  factory Scene.empty() {
    return Scene._(
      name: '',
      gameObjects: [],
      snapshots: [],
    );
  }

  void setName(String name) {
    this.name = name;
  }
}
