import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

class LoadSceneModel {
  List<Scene> scenes = [];
  Scene selectedScene = Scene.empty();

  void updateScenes(List<Scene> scenes) {
    this.scenes = scenes;
  }

  void select(EntityId sceneId) {
    selectedScene = scenes.firstWhere((scene) => scene.id == sceneId);
  }
}
