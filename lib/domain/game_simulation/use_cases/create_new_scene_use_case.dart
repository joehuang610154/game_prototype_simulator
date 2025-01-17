import 'package:game_prototype_simulator/domain/game_simulation/entities/scene.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CreateNewSceneUseCase {
  CreateNewSceneUseCase();

  Scene execute({required String name}) {
    return Scene.create(name);
  }
}
