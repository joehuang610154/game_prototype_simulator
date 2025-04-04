import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/get_all_scenes_repository.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/load_scene_popup/load_scene_model.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoadSceneViewModel extends ViewModel<LoadSceneModel> {
  final GetAllScenesRepository _getAllScenesRepository;

  LoadSceneViewModel({
    required GetAllScenesRepository getAllScenesRepository,
  }) : _getAllScenesRepository = getAllScenesRepository;

  @override
  LoadSceneModel initState() => LoadSceneModel();

  Rx<List<Scene>> get scenes => obs((model) => model.scenes);
  Rx<Scene> get selectedScene => obs((model) => model.selectedScene);

  @PostConstruct()
  void init() {
    refreshScenes();
  }

  Future<void> refreshScenes() async {
    var scenes = await _getAllScenesRepository.get();
    setState((model) => model.updateScenes(scenes));
  }

  void selectScene(EntityId sceneId) {
    setState((model) => model.select(sceneId));
  }
}
