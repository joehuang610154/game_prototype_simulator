import 'package:drift/drift.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene.dart';
import 'package:game_prototype_simulator/app/data/data_transfer_objects/scene_snapshot.dart';
import 'package:game_prototype_simulator/app/data/db.dart';
import 'package:game_prototype_simulator/app/data/entity_table.dart';
import 'package:game_prototype_simulator/app/domain/entities/game_object.dart';
import 'package:game_prototype_simulator/app/domain/value_objects/game_object_shape.dart';
import 'package:game_prototype_simulator/utils/color_extension.dart';
import 'package:game_prototype_simulator/utils/num_extension.dart';

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

extension GameObjectDtoExt on GameObjectDto {
  static fromEntity(GameObject entity) {
    return GameObjectDto(
      id: entity.id.toString(),
      name: entity.name,
      positionX: entity.position.x.multiply100i(),
      positionY: entity.position.y.multiply100i(),
      color: entity.color.toInt(),
      shape: switch (entity.appearance.shape) {
        GameObjectShape.circle => 'circle',
        GameObjectShape.rectangle => 'rectangle',
      },
      width: entity.appearance.width.multiply100i(),
      height: entity.appearance.height.multiply100i(),
    );
  }

  GameObject toEntity() {
    return GameObject.restore(
      id: id,
      name: name,
      positionX: positionX,
      positionY: positionY,
      color: color,
      shape: shape,
      width: width,
      height: height,
    );
  }
}
