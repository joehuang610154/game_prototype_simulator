import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/game_object_appearance.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/game_object_shape.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/position.dart';
import 'package:game_prototype_simulator/framework/entity.dart';
import 'package:game_prototype_simulator/utils/num_extension.dart';

class GameObject extends Entity {
  String name;
  Position position;
  Color color;
  GameObjectAppearance appearance;

  GameObject._({
    required this.name,
    required this.position,
    required this.color,
    required this.appearance,
  });

  factory GameObject.restore({
    required String id,
    required String name,
    required int positionX,
    required int positionY,
    required int color,
    required String shape,
    required int width,
    required int height,
  }) {
    return GameObject._(
      name: name,
      position: Position(
        x: positionX.divide100d(),
        y: positionY.divide100d(),
      ),
      color: Color(color),
      appearance: GameObjectAppearance(
        shape: switch (shape) {
          'circle' => GameObjectShape.circle,
          'rectangle' => GameObjectShape.rectangle,
          _ => throw Exception('Unknown shape: $shape'),
        },
        width: width.divide100d(),
        height: height.divide100d(),
      ),
    );
  }
}
