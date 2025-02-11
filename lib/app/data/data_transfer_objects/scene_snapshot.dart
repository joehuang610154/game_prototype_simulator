import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene.dart';
import 'package:game_prototype_simulator/app/data/entity_table.dart';

@DataClassName("SceneSnapshotDto")
class SceneSnapshotTable extends EntityTable {
  TextColumn get description => text()();
  TextColumn get sceneId => text().references(SceneTable, #id)();
  TextColumn get parentId => text().references(SceneSnapshotTable, #id)();
}
