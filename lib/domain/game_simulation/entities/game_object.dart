import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/entity.dart';

class GameObjectShape {
  final BoxShape shape;
  final Size size;
  final BorderRadius? borderRadius;

  const GameObjectShape._({
    required this.shape,
    required this.size,
    required this.borderRadius,
  });

  factory GameObjectShape.circle(double size) {
    return GameObjectShape._(
      shape: BoxShape.circle,
      size: Size.square(size),
      borderRadius: null,
    );
  }

  factory GameObjectShape.rectangle(Size size) {
    return GameObjectShape._(
      shape: BoxShape.rectangle,
      size: size,
      borderRadius: null,
    );
  }

  factory GameObjectShape.roundedRectangle(Size size) {
    return GameObjectShape._(
      shape: BoxShape.rectangle,
      size: size,
      borderRadius: BorderRadius.circular(999),
    );
  }
}

class GameObject extends Entity {
  String name = "";
  GameObjectShape shape = GameObjectShape.circle(60);
  Offset position = Offset.zero;
  Color color = Colors.blue;
  Map<String, dynamic> properties = {};

  GameObject._();

  factory GameObject.create() {
    return GameObject._();
  }

  void rename(String newName) => name = newName;

  void setProperty(String key, dynamic value) {
    properties = {
      ...properties,
      key: value,
    };
  }

  void updatePropertyKey(String oldKey, String newKey) {
    properties = {
      ...properties,
      newKey: properties[oldKey],
    };
    properties.remove(oldKey);
  }

  void setShape(GameObjectShape newShape) => shape = newShape;

  void setColor(Color newColor) => color = newColor;

  void move(Offset delta) {
    position = Offset(
      max(0, position.dx + delta.dx),
      max(0, position.dy + delta.dy),
    );
  }
}
