import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
import 'package:game_prototype_simulator/domain/game_simulation/use_cases/create_new_scene_use_case.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SimulateViewModel extends ViewModel<SimulateModel> {
  final CreateNewSceneUseCase _createNewScene;

  SimulateViewModel({
    required CreateNewSceneUseCase createNewScene,
  }) : _createNewScene = createNewScene;

  @override
  SimulateModel initState() => SimulateModel.initialized();

  Rx<String?> get sceneName => obs((model) => model.currentScene?.name);

  Rx<List<GameObject>> get gameObjects =>
      obs((model) => model.currentScene?.gameObjects ?? []);

  Rx<EntityId?> get focusedGameObjectId =>
      obs((model) => model.focusedGameObjectId);

  Rx<bool> isFocused(EntityId gameObjectId) =>
      obs((model) => model.focusedGameObjectId == gameObjectId);

  void createNewScene() {
    var newScene = _createNewScene.execute(
      name: "Battle Field",
    );
    setState((model) => model.currentScene = newScene);
  }

  void addNewGameObject() {
    setState((model) => model.currentScene?.addGameObject());
  }

  void renameScene() {
    setState((model) => model.currentScene?.rename("Xxxxx"));
  }

  void focusOnGameObject(EntityId gameObjectId) {
    setState((model) => model.focusedGameObjectId = gameObjectId);
  }
}
