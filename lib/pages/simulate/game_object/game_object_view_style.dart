import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_object_view_style.freezed.dart';

@freezed
class GameObjectViewStyle with _$GameObjectViewStyle {
  const factory GameObjectViewStyle._({
    required double width,
    required double height,
    required BorderRadius? borderRadius,
    required BoxShape shape,
    required Color color,
  }) = _GameObjectViewStyle;

  factory GameObjectViewStyle.fromEntity(GameObject gameObject) {
    return GameObjectViewStyle._(
      width: gameObject.shape.size.width,
      height: gameObject.shape.size.height,
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
