import 'package:game_prototype_simulator/framework/entity.dart';

class Scene extends Entity {
  String name;

  Scene._(this.name);

  factory Scene.create(String name) {
    return Scene._(name);
  }
}
