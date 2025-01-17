import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
import 'package:game_prototype_simulator/domain/game_simulation/use_cases/create_new_scene_use_case.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class SimulateViewModel {
  final BehaviorSubject<SimulateModel> _state =
      BehaviorSubject.seeded(SimulateModel.initialized());

  SimulateModel get _model => _state.value;

  final CreateNewSceneUseCase _createNewScene;

  SimulateViewModel({
    required CreateNewSceneUseCase createNewScene,
  }) : _createNewScene = createNewScene;

  String get sceneName => _state.value.currentScene?.name ?? "";

  Stream<List<GameObject>> get gameObjects {
    return _state.stream
        .mapNotNull((model) => model.currentScene?.gameObjects)
        .distinct();
  }

  void createNewScene() {
    var newScene = _createNewScene.execute(
      name: "Battle Field",
    );
    _state.add(
      _model.copyWith(currentScene: newScene),
    );
  }

  void addNewGameObject() {
    _state.add(
      _model.copyWith(currentScene: _model.currentScene?..addGameObject()),
    );
  }
}
