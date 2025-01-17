import 'package:game_prototype_simulator/domain/game_simulation/entities/scene.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulate_model.freezed.dart';

@freezed
class SimulateModel with _$SimulateModel {
  const SimulateModel._();

  const factory SimulateModel({
    Scene? currentScene,
  }) = _SimulateModel;

  factory SimulateModel.initialized() {
    return SimulateModel._();
  }
}
