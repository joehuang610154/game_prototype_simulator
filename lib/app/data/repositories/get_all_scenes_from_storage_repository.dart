import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene.dart';
import 'package:game_prototype_simulator/app/data/db.dart';
import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/get_all_scenes_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetAllScenesRepository)
class GetAllScenesFromStorageRepository implements GetAllScenesRepository {
  final AppDatabase db;

  GetAllScenesFromStorageRepository({required this.db});

  @override
  Future<List<Scene>> get() async {
    var scenes = await db.sceneTable.all().get();
    return scenes.map((scene) => scene.toEntity()).toList();
  }
}
