import 'package:game_prototype_simulator/app/domain/value_objects/color_hex.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/game_object_appearance.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/position.dart';
import 'package:game_prototype_simulator/framework/entity.dart';

class GameObject extends Entity {
  String name;
  Position position;
  ColorHex colorHex;
  GameObjectAppearance appearance;

  GameObject._({
    required this.name,
    required this.position,
    required this.colorHex,
    required this.appearance,
  });
}
