import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/db.dart';
import 'package:game_prototype_simulator/app/data/entity_table.dart';
import 'package:game_prototype_simulator/app/domain/entities/scene.dart';

@DataClassName("SceneDto")
class SceneTable extends EntityTable {
  TextColumn get name => text()();
}

extension SceneDtoExt on SceneDto {
  Scene toEntity() {
    return Scene.restore(
      id: id.toString(),
      name: name,
    );
  }
}
