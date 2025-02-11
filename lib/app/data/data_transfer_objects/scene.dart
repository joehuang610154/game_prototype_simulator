import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/entity_table.dart';

@DataClassName("SceneDto")
class SceneTable extends EntityTable {
  TextColumn get name => text()();
}
