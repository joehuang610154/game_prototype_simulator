import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';

class GameObjectViewStyle {
  final double width;
  final double height;
  final BorderRadius? borderRadius;
  final BoxShape shape;
  final Color color;

  GameObjectViewStyle._({
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.shape,
    required this.color,
  });

  factory GameObjectViewStyle.fromEntity(GameObject gameObject) {
    return GameObjectViewStyle._(
      width: gameObject.size.width,
      height: gameObject.size.height,
      borderRadius: gameObject.shape.borderRadius,
      shape: gameObject.shape.shape,
      color: gameObject.color,
    );
  }

  factory GameObjectViewStyle.empty() {
    return GameObjectViewStyle._(
      width: 1,
      height: 1,
      borderRadius: null,
      shape: BoxShape.circle,
      color: Colors.white,
    );
  }
}
