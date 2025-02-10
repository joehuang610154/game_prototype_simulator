import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/game_object_shape.dart';

part 'game_object_appearance.freezed.dart';

@freezed
class GameObjectAppearance with _$GameObjectAppearance {
  const GameObjectAppearance._();

  const factory GameObjectAppearance({
    required GameObjectShape shape,
    required double width,
    required double height,
  }) = _GameObjectAppearance;
}
