import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/db.dart';
import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/save_scene_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SaveSceneRepository)
class SaveSceneToStorageRepository implements SaveSceneRepository {
  final AppDatabase db;

  SaveSceneToStorageRepository({required this.db});

  @override
  Future<void> save(Scene scene) async {
    await db.sceneTable.insertOne(
      SceneDto(id: scene.id.toString(), name: scene.name),
    );
  }
}
