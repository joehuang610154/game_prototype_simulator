import 'package:game_prototype_simulator/app/domain/value_objects/game_object_shape.dart';
import 'package:game_prototype_simulator/framework/value_object.dart';

class GameObjectAppearance extends ValueObject {
  final GameObjectShape shape;
  final double width;
  final double height;

  const GameObjectAppearance({
    required this.shape,
    required this.width,
    required this.height,
  });

  @override
  get props => [shape, width, height];
}
