import 'package:flutter/material.dart';

class WidgetKey {
  static const createNewSceneButton = ValueKey("create_new_scene");

  static const addNewGameObject = ValueKey("add_new_game_object");

  static Key gameObject(String id) => ValueKey("game_object_$id");
}
