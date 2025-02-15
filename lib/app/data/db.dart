import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/game_object.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene_snapshot.dart';
import 'package:game_prototype_simulator/app/constants/envs.dart';
import 'package:injectable/injectable.dart';

part 'db.g.dart';

@DriftDatabase(tables: [SceneTable, SceneSnapshotTable, GameObjectTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}

@module
abstract class DbRegisterModule {
  @LazySingleton(env: Envs.runtime)
  AppDatabase get db {
    return AppDatabase(
      driftDatabase(name: "game_prototype_simulator.db"),
    );
  }
}
