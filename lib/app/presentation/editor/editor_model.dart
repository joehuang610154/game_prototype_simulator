import 'package:game_prototype_simulator/app/domain/entities/scene.dart';

class EditorModel {
  Scene scene = Scene.create(name: '');

  void setSceneName(String sceneName) {
    scene.setName(sceneName);
  }

  void setScene(Scene scene) {
    this.scene = scene;
  }
}
