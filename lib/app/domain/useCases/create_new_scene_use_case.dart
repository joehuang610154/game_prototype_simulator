import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/get_create_scene_input_repository.dart';
import 'package:game_prototype_simulator/app/domain/repositories/save_scene_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreateNewSceneUseCase {
  final SaveSceneRepository _saveSceneRepository;
  final GetCreateSceneInputRepository _getSceneRepository;

  CreateNewSceneUseCase({
    required SaveSceneRepository saveSceneRepository,
    required GetCreateSceneInputRepository getSceneRepository,
  })  : _saveSceneRepository = saveSceneRepository,
        _getSceneRepository = getSceneRepository;

  Future<void> execute() async {
    final createSceneInput = await _getSceneRepository.get();
    if (createSceneInput == null) return;

    await _saveSceneRepository.save(
      Scene.create(
        name: createSceneInput.name,
      ),
    );
  }
}
