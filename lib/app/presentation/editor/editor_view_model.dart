import 'package:game_prototype_simulator/app/domain/repositories/get_scene_repository.dart';
import 'package:game_prototype_simulator/app/presentation/editor/editor_model.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class EditorViewModel extends ViewModel<EditorModel> {
  final GetSceneRepository _getSceneRepository;

  EditorViewModel({
    required GetSceneRepository getSceneRepository,
  }) : _getSceneRepository = getSceneRepository;

  @override
  EditorModel initState() => EditorModel();

  Rx<String> get sceneName => obs((model) => model.scene.name);

  void setSceneName(String sceneName) {
    setState((model) => model.setSceneName(sceneName));
  }

  Future<void> init(String sceneId) async {
    var scene = await _getSceneRepository.get(EntityId(id: sceneId));
    setState((model) => model.setScene(scene));
  }
}
