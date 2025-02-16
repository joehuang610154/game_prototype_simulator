import 'package:game_prototype_simulator/app/domain/entities/scene.dart';

abstract class SaveSceneRepository {
  Future<void> save(Scene scene);
}
