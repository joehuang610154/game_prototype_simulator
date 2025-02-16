import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/save_scene_repository.dart';
import 'package:injectable/injectable.dart';

class CreateNewSceneInput {
  final String name;

  CreateNewSceneInput({
    required this.name,
  });
}

@LazySingleton()
class CreateNewSceneUseCase {
  final SaveSceneRepository _saveSceneRepository;

  CreateNewSceneUseCase({
    required SaveSceneRepository saveSceneRepository,
  }) : _saveSceneRepository = saveSceneRepository;

  Future<void> execute(CreateNewSceneInput input) async {
    _saveSceneRepository.save(Scene.create(
      name: input.name,
    ));
  }
}
