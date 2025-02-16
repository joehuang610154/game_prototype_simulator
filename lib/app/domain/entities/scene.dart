import 'package:game_prototype_simulator/app/domain/entities/game_object.dart';
import 'package:game_prototype_simulator/app/domain/entities/scene_snapshot.dart';
import 'package:game_prototype_simulator/framework/entity.dart';

class Scene extends Entity {
  String name;
  List<GameObject> gameObjects;
  List<SceneSnapshot> snapshots;

  Scene._({
    super.id,
    required this.name,
    required this.gameObjects,
    required this.snapshots,
  });

  factory Scene.create({
    required String name,
  }) {
    return Scene._(
      name: name,
      gameObjects: [],
      snapshots: [],
    );
  }

  void setName(String name) {
    this.name = name;
  }

  factory Scene.restore({
    required String id,
    required String name,
  }) {
    return Scene._(
      id: id,
      name: name,
      gameObjects: [],
      snapshots: [],
    );
  }
}
