import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene_snapshot.dart';
import 'package:game_prototype_simulator/app/data/entity_table.dart';

@DataClassName("GameObjectDto")
class GameObjectTable extends EntityTable {
  TextColumn get name => text()();
  TextColumn get sceneId => text().references(SceneTable, #id).nullable()();
  TextColumn get sceneSnapshotId =>
      text().references(SceneSnapshotTable, #id).nullable()();
  IntColumn get positionX => integer()();
  IntColumn get positionY => integer()();
  IntColumn get color => integer()();
  TextColumn get shape => text().withLength(min: 1, max: 10)();
  IntColumn get width => integer()();
  IntColumn get height => integer()();
}
