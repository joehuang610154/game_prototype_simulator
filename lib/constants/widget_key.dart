import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

class WidgetKey {
  static const createNewSceneButton = ValueKey("create_new_scene");

  static const addNewGameObject = ValueKey("add_new_game_object");

  static const gameObjectPropertiesPanel =
      ValueKey("panel_game_object_properties");

  static Key gameObject(EntityId id) => ValueKey("game_object_$id");
}
