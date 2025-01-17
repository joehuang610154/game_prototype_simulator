import 'package:game_prototype_simulator/domain/game_simulation/entities/scene.dart';
import 'package:game_prototype_simulator/domain/game_simulation/use_cases/create_new_scene_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

class SimulateModel {
  Scene? currentScene;

  SimulateModel._();

  factory SimulateModel.initialized() {
    return SimulateModel._();
  }
}

@Injectable()
class SimulateViewModel {
  final BehaviorSubject<SimulateModel> _state =
      BehaviorSubject.seeded(SimulateModel.initialized());

  final CreateNewSceneUseCase _createNewScene;

  SimulateViewModel({
    required CreateNewSceneUseCase createNewScene,
  }) : _createNewScene = createNewScene;

  String get sceneName => _state.value.currentScene?.name ?? "";

  void createNewScene() {
    var newScene = _createNewScene.execute(
      name: "Battle Field",
    );
    _state.add(_state.value..currentScene = newScene);
  }
}
