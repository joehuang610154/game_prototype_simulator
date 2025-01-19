import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

class WidgetKey {
  static const createNewSceneButton = ValueKey("create_new_scene");

  static const addNewGameObject = ValueKey("add_new_game_object");
  static const setGameObjectShape = ValueKey("set_game_object_shape");

  static Key gameObject(EntityId id) => ValueKey("entity_game_object_$id");

  static Key gameObjectPropertyField(String fieldName) =>
      ValueKey("game_object_property_field_$fieldName");
}
