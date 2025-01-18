import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
import 'package:game_prototype_simulator/domain/game_simulation/use_cases/create_new_scene_use_case.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class SimulateViewModel extends ViewModel<SimulateModel> {
  final CreateNewSceneUseCase _createNewScene;

  SimulateViewModel({
    required CreateNewSceneUseCase createNewScene,
  }) : _createNewScene = createNewScene;

  @override
  SimulateModel initState() => SimulateModel.initialized();

  String get sceneName => state.currentScene?.name ?? "";

  BehaviorSubject<List<GameObject>> get gameObjects =>
      obs((model) => model.currentScene?.gameObjects ?? []);

  void createNewScene() {
    var newScene = _createNewScene.execute(
      name: "Battle Field",
    );
    setState((model) => model.currentScene = newScene);
  }

  void addNewGameObject() {
    setState((model) => model.currentScene?.addGameObject());
  }
}
