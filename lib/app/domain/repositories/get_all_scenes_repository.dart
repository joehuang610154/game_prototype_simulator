import 'package:game_prototype_simulator/app/domain/entities/scene.dart';

abstract class GetAllScenesRepository {
  Future<List<Scene>> get();
}
