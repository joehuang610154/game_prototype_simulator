import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene.dart';
import 'package:game_prototype_simulator/app/data/db.dart';
import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/get_scene_repository.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetSceneRepository)
class GetSceneFromStorageRepository implements GetSceneRepository {
  final AppDatabase db;

  GetSceneFromStorageRepository({required this.db});

  @override
  Future<Scene> get(EntityId id) async {
    var sql = db.sceneTable.select()
      ..where(
        (scene) => scene.id.equals(id.toString()),
      );
    return (await sql.getSingle()).toEntity();
  }
}
