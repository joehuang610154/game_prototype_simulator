import 'package:game_prototype_simulator/framework/value_object.dart';

class Position extends ValueObject {
  final double x;
  final double y;

  const Position({
    required this.x,
    required this.y,
  });

  @override
  get props => [x, y];
}
