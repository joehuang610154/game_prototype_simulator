// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $SceneDtoTable extends SceneDto with TableInfo<$SceneDtoTable, Scene> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SceneDtoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 32, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scene_dto';
  @override
  VerificationContext validateIntegrity(Insertable<Scene> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Scene map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Scene(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $SceneDtoTable createAlias(String alias) {
    return $SceneDtoTable(attachedDatabase, alias);
  }
}

class Scene extends DataClass implements Insertable<Scene> {
  final String id;
  final String name;
  const Scene({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  SceneDtoCompanion toCompanion(bool nullToAbsent) {
    return SceneDtoCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory Scene.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Scene(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Scene copyWith({String? id, String? name}) => Scene(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  Scene copyWithCompanion(SceneDtoCompanion data) {
    return Scene(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Scene(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Scene && other.id == this.id && other.name == this.name);
}

class SceneDtoCompanion extends UpdateCompanion<Scene> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const SceneDtoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SceneDtoCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<Scene> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SceneDtoCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return SceneDtoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SceneDtoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SceneSnapshotDtoTable extends SceneSnapshotDto
    with TableInfo<$SceneSnapshotDtoTable, SceneSnapshot> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SceneSnapshotDtoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 32, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sceneIdMeta =
      const VerificationMeta('sceneId');
  @override
  late final GeneratedColumn<String> sceneId = GeneratedColumn<String>(
      'scene_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES scene_dto (id)'));
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<String> parentId = GeneratedColumn<String>(
      'parent_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES scene_snapshot_dto (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, description, sceneId, parentId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scene_snapshot_dto';
  @override
  VerificationContext validateIntegrity(Insertable<SceneSnapshot> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('scene_id')) {
      context.handle(_sceneIdMeta,
          sceneId.isAcceptableOrUnknown(data['scene_id']!, _sceneIdMeta));
    } else if (isInserting) {
      context.missing(_sceneIdMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    } else if (isInserting) {
      context.missing(_parentIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SceneSnapshot map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SceneSnapshot(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      sceneId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scene_id'])!,
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent_id'])!,
    );
  }

  @override
  $SceneSnapshotDtoTable createAlias(String alias) {
    return $SceneSnapshotDtoTable(attachedDatabase, alias);
  }
}

class SceneSnapshot extends DataClass implements Insertable<SceneSnapshot> {
  final String id;
  final String description;
  final String sceneId;
  final String parentId;
  const SceneSnapshot(
      {required this.id,
      required this.description,
      required this.sceneId,
      required this.parentId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['description'] = Variable<String>(description);
    map['scene_id'] = Variable<String>(sceneId);
    map['parent_id'] = Variable<String>(parentId);
    return map;
  }

  SceneSnapshotDtoCompanion toCompanion(bool nullToAbsent) {
    return SceneSnapshotDtoCompanion(
      id: Value(id),
      description: Value(description),
      sceneId: Value(sceneId),
      parentId: Value(parentId),
    );
  }

  factory SceneSnapshot.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SceneSnapshot(
      id: serializer.fromJson<String>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      sceneId: serializer.fromJson<String>(json['sceneId']),
      parentId: serializer.fromJson<String>(json['parentId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'description': serializer.toJson<String>(description),
      'sceneId': serializer.toJson<String>(sceneId),
      'parentId': serializer.toJson<String>(parentId),
    };
  }

  SceneSnapshot copyWith(
          {String? id,
          String? description,
          String? sceneId,
          String? parentId}) =>
      SceneSnapshot(
        id: id ?? this.id,
        description: description ?? this.description,
        sceneId: sceneId ?? this.sceneId,
        parentId: parentId ?? this.parentId,
      );
  SceneSnapshot copyWithCompanion(SceneSnapshotDtoCompanion data) {
    return SceneSnapshot(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      sceneId: data.sceneId.present ? data.sceneId.value : this.sceneId,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SceneSnapshot(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('sceneId: $sceneId, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description, sceneId, parentId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SceneSnapshot &&
          other.id == this.id &&
          other.description == this.description &&
          other.sceneId == this.sceneId &&
          other.parentId == this.parentId);
}

class SceneSnapshotDtoCompanion extends UpdateCompanion<SceneSnapshot> {
  final Value<String> id;
  final Value<String> description;
  final Value<String> sceneId;
  final Value<String> parentId;
  final Value<int> rowid;
  const SceneSnapshotDtoCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.sceneId = const Value.absent(),
    this.parentId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SceneSnapshotDtoCompanion.insert({
    required String id,
    required String description,
    required String sceneId,
    required String parentId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        description = Value(description),
        sceneId = Value(sceneId),
        parentId = Value(parentId);
  static Insertable<SceneSnapshot> custom({
    Expression<String>? id,
    Expression<String>? description,
    Expression<String>? sceneId,
    Expression<String>? parentId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (sceneId != null) 'scene_id': sceneId,
      if (parentId != null) 'parent_id': parentId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SceneSnapshotDtoCompanion copyWith(
      {Value<String>? id,
      Value<String>? description,
      Value<String>? sceneId,
      Value<String>? parentId,
      Value<int>? rowid}) {
    return SceneSnapshotDtoCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      sceneId: sceneId ?? this.sceneId,
      parentId: parentId ?? this.parentId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (sceneId.present) {
      map['scene_id'] = Variable<String>(sceneId.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SceneSnapshotDtoCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('sceneId: $sceneId, ')
          ..write('parentId: $parentId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GameObjectDtoTable extends GameObjectDto
    with TableInfo<$GameObjectDtoTable, GameObject> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GameObjectDtoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 32, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sceneIdMeta =
      const VerificationMeta('sceneId');
  @override
  late final GeneratedColumn<String> sceneId = GeneratedColumn<String>(
      'scene_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES scene_dto (id)'));
  static const VerificationMeta _sceneSnapshotIdMeta =
      const VerificationMeta('sceneSnapshotId');
  @override
  late final GeneratedColumn<String> sceneSnapshotId = GeneratedColumn<String>(
      'scene_snapshot_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES scene_snapshot_dto (id)'));
  static const VerificationMeta _positionXMeta =
      const VerificationMeta('positionX');
  @override
  late final GeneratedColumn<int> positionX = GeneratedColumn<int>(
      'position_x', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _positionYMeta =
      const VerificationMeta('positionY');
  @override
  late final GeneratedColumn<int> positionY = GeneratedColumn<int>(
      'position_y', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
      'color', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _shapeMeta = const VerificationMeta('shape');
  @override
  late final GeneratedColumn<String> shape = GeneratedColumn<String>(
      'shape', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        sceneId,
        sceneSnapshotId,
        positionX,
        positionY,
        color,
        shape,
        width,
        height
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'game_object_dto';
  @override
  VerificationContext validateIntegrity(Insertable<GameObject> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('scene_id')) {
      context.handle(_sceneIdMeta,
          sceneId.isAcceptableOrUnknown(data['scene_id']!, _sceneIdMeta));
    }
    if (data.containsKey('scene_snapshot_id')) {
      context.handle(
          _sceneSnapshotIdMeta,
          sceneSnapshotId.isAcceptableOrUnknown(
              data['scene_snapshot_id']!, _sceneSnapshotIdMeta));
    }
    if (data.containsKey('position_x')) {
      context.handle(_positionXMeta,
          positionX.isAcceptableOrUnknown(data['position_x']!, _positionXMeta));
    } else if (isInserting) {
      context.missing(_positionXMeta);
    }
    if (data.containsKey('position_y')) {
      context.handle(_positionYMeta,
          positionY.isAcceptableOrUnknown(data['position_y']!, _positionYMeta));
    } else if (isInserting) {
      context.missing(_positionYMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('shape')) {
      context.handle(
          _shapeMeta, shape.isAcceptableOrUnknown(data['shape']!, _shapeMeta));
    } else if (isInserting) {
      context.missing(_shapeMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GameObject map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GameObject(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      sceneId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scene_id']),
      sceneSnapshotId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}scene_snapshot_id']),
      positionX: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position_x'])!,
      positionY: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position_y'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}color'])!,
      shape: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shape'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height'])!,
    );
  }

  @override
  $GameObjectDtoTable createAlias(String alias) {
    return $GameObjectDtoTable(attachedDatabase, alias);
  }
}

class GameObject extends DataClass implements Insertable<GameObject> {
  final String id;
  final String name;
  final String? sceneId;
  final String? sceneSnapshotId;
  final int positionX;
  final int positionY;
  final int color;
  final String shape;
  final int width;
  final int height;
  const GameObject(
      {required this.id,
      required this.name,
      this.sceneId,
      this.sceneSnapshotId,
      required this.positionX,
      required this.positionY,
      required this.color,
      required this.shape,
      required this.width,
      required this.height});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || sceneId != null) {
      map['scene_id'] = Variable<String>(sceneId);
    }
    if (!nullToAbsent || sceneSnapshotId != null) {
      map['scene_snapshot_id'] = Variable<String>(sceneSnapshotId);
    }
    map['position_x'] = Variable<int>(positionX);
    map['position_y'] = Variable<int>(positionY);
    map['color'] = Variable<int>(color);
    map['shape'] = Variable<String>(shape);
    map['width'] = Variable<int>(width);
    map['height'] = Variable<int>(height);
    return map;
  }

  GameObjectDtoCompanion toCompanion(bool nullToAbsent) {
    return GameObjectDtoCompanion(
      id: Value(id),
      name: Value(name),
      sceneId: sceneId == null && nullToAbsent
          ? const Value.absent()
          : Value(sceneId),
      sceneSnapshotId: sceneSnapshotId == null && nullToAbsent
          ? const Value.absent()
          : Value(sceneSnapshotId),
      positionX: Value(positionX),
      positionY: Value(positionY),
      color: Value(color),
      shape: Value(shape),
      width: Value(width),
      height: Value(height),
    );
  }

  factory GameObject.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GameObject(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      sceneId: serializer.fromJson<String?>(json['sceneId']),
      sceneSnapshotId: serializer.fromJson<String?>(json['sceneSnapshotId']),
      positionX: serializer.fromJson<int>(json['positionX']),
      positionY: serializer.fromJson<int>(json['positionY']),
      color: serializer.fromJson<int>(json['color']),
      shape: serializer.fromJson<String>(json['shape']),
      width: serializer.fromJson<int>(json['width']),
      height: serializer.fromJson<int>(json['height']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'sceneId': serializer.toJson<String?>(sceneId),
      'sceneSnapshotId': serializer.toJson<String?>(sceneSnapshotId),
      'positionX': serializer.toJson<int>(positionX),
      'positionY': serializer.toJson<int>(positionY),
      'color': serializer.toJson<int>(color),
      'shape': serializer.toJson<String>(shape),
      'width': serializer.toJson<int>(width),
      'height': serializer.toJson<int>(height),
    };
  }

  GameObject copyWith(
          {String? id,
          String? name,
          Value<String?> sceneId = const Value.absent(),
          Value<String?> sceneSnapshotId = const Value.absent(),
          int? positionX,
          int? positionY,
          int? color,
          String? shape,
          int? width,
          int? height}) =>
      GameObject(
        id: id ?? this.id,
        name: name ?? this.name,
        sceneId: sceneId.present ? sceneId.value : this.sceneId,
        sceneSnapshotId: sceneSnapshotId.present
            ? sceneSnapshotId.value
            : this.sceneSnapshotId,
        positionX: positionX ?? this.positionX,
        positionY: positionY ?? this.positionY,
        color: color ?? this.color,
        shape: shape ?? this.shape,
        width: width ?? this.width,
        height: height ?? this.height,
      );
  GameObject copyWithCompanion(GameObjectDtoCompanion data) {
    return GameObject(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      sceneId: data.sceneId.present ? data.sceneId.value : this.sceneId,
      sceneSnapshotId: data.sceneSnapshotId.present
          ? data.sceneSnapshotId.value
          : this.sceneSnapshotId,
      positionX: data.positionX.present ? data.positionX.value : this.positionX,
      positionY: data.positionY.present ? data.positionY.value : this.positionY,
      color: data.color.present ? data.color.value : this.color,
      shape: data.shape.present ? data.shape.value : this.shape,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GameObject(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('sceneId: $sceneId, ')
          ..write('sceneSnapshotId: $sceneSnapshotId, ')
          ..write('positionX: $positionX, ')
          ..write('positionY: $positionY, ')
          ..write('color: $color, ')
          ..write('shape: $shape, ')
          ..write('width: $width, ')
          ..write('height: $height')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, sceneId, sceneSnapshotId, positionX,
      positionY, color, shape, width, height);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GameObject &&
          other.id == this.id &&
          other.name == this.name &&
          other.sceneId == this.sceneId &&
          other.sceneSnapshotId == this.sceneSnapshotId &&
          other.positionX == this.positionX &&
          other.positionY == this.positionY &&
          other.color == this.color &&
          other.shape == this.shape &&
          other.width == this.width &&
          other.height == this.height);
}

class GameObjectDtoCompanion extends UpdateCompanion<GameObject> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> sceneId;
  final Value<String?> sceneSnapshotId;
  final Value<int> positionX;
  final Value<int> positionY;
  final Value<int> color;
  final Value<String> shape;
  final Value<int> width;
  final Value<int> height;
  final Value<int> rowid;
  const GameObjectDtoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.sceneId = const Value.absent(),
    this.sceneSnapshotId = const Value.absent(),
    this.positionX = const Value.absent(),
    this.positionY = const Value.absent(),
    this.color = const Value.absent(),
    this.shape = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GameObjectDtoCompanion.insert({
    required String id,
    required String name,
    this.sceneId = const Value.absent(),
    this.sceneSnapshotId = const Value.absent(),
    required int positionX,
    required int positionY,
    required int color,
    required String shape,
    required int width,
    required int height,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        positionX = Value(positionX),
        positionY = Value(positionY),
        color = Value(color),
        shape = Value(shape),
        width = Value(width),
        height = Value(height);
  static Insertable<GameObject> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? sceneId,
    Expression<String>? sceneSnapshotId,
    Expression<int>? positionX,
    Expression<int>? positionY,
    Expression<int>? color,
    Expression<String>? shape,
    Expression<int>? width,
    Expression<int>? height,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (sceneId != null) 'scene_id': sceneId,
      if (sceneSnapshotId != null) 'scene_snapshot_id': sceneSnapshotId,
      if (positionX != null) 'position_x': positionX,
      if (positionY != null) 'position_y': positionY,
      if (color != null) 'color': color,
      if (shape != null) 'shape': shape,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GameObjectDtoCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String?>? sceneId,
      Value<String?>? sceneSnapshotId,
      Value<int>? positionX,
      Value<int>? positionY,
      Value<int>? color,
      Value<String>? shape,
      Value<int>? width,
      Value<int>? height,
      Value<int>? rowid}) {
    return GameObjectDtoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      sceneId: sceneId ?? this.sceneId,
      sceneSnapshotId: sceneSnapshotId ?? this.sceneSnapshotId,
      positionX: positionX ?? this.positionX,
      positionY: positionY ?? this.positionY,
      color: color ?? this.color,
      shape: shape ?? this.shape,
      width: width ?? this.width,
      height: height ?? this.height,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sceneId.present) {
      map['scene_id'] = Variable<String>(sceneId.value);
    }
    if (sceneSnapshotId.present) {
      map['scene_snapshot_id'] = Variable<String>(sceneSnapshotId.value);
    }
    if (positionX.present) {
      map['position_x'] = Variable<int>(positionX.value);
    }
    if (positionY.present) {
      map['position_y'] = Variable<int>(positionY.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (shape.present) {
      map['shape'] = Variable<String>(shape.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GameObjectDtoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('sceneId: $sceneId, ')
          ..write('sceneSnapshotId: $sceneSnapshotId, ')
          ..write('positionX: $positionX, ')
          ..write('positionY: $positionY, ')
          ..write('color: $color, ')
          ..write('shape: $shape, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SceneDtoTable sceneDto = $SceneDtoTable(this);
  late final $SceneSnapshotDtoTable sceneSnapshotDto =
      $SceneSnapshotDtoTable(this);
  late final $GameObjectDtoTable gameObjectDto = $GameObjectDtoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [sceneDto, sceneSnapshotDto, gameObjectDto];
}

typedef $$SceneDtoTableCreateCompanionBuilder = SceneDtoCompanion Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$SceneDtoTableUpdateCompanionBuilder = SceneDtoCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

final class $$SceneDtoTableReferences
    extends BaseReferences<_$AppDatabase, $SceneDtoTable, Scene> {
  $$SceneDtoTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SceneSnapshotDtoTable, List<SceneSnapshot>>
      _sceneSnapshotDtoRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.sceneSnapshotDto,
              aliasName: $_aliasNameGenerator(
                  db.sceneDto.id, db.sceneSnapshotDto.sceneId));

  $$SceneSnapshotDtoTableProcessedTableManager get sceneSnapshotDtoRefs {
    final manager =
        $$SceneSnapshotDtoTableTableManager($_db, $_db.sceneSnapshotDto)
            .filter((f) => f.sceneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_sceneSnapshotDtoRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GameObjectDtoTable, List<GameObject>>
      _gameObjectDtoRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gameObjectDto,
              aliasName: $_aliasNameGenerator(
                  db.sceneDto.id, db.gameObjectDto.sceneId));

  $$GameObjectDtoTableProcessedTableManager get gameObjectDtoRefs {
    final manager = $$GameObjectDtoTableTableManager($_db, $_db.gameObjectDto)
        .filter((f) => f.sceneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_gameObjectDtoRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SceneDtoTableFilterComposer
    extends Composer<_$AppDatabase, $SceneDtoTable> {
  $$SceneDtoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> sceneSnapshotDtoRefs(
      Expression<bool> Function($$SceneSnapshotDtoTableFilterComposer f) f) {
    final $$SceneSnapshotDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableFilterComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> gameObjectDtoRefs(
      Expression<bool> Function($$GameObjectDtoTableFilterComposer f) f) {
    final $$GameObjectDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectDto,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectDtoTableFilterComposer(
              $db: $db,
              $table: $db.gameObjectDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneDtoTableOrderingComposer
    extends Composer<_$AppDatabase, $SceneDtoTable> {
  $$SceneDtoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$SceneDtoTableAnnotationComposer
    extends Composer<_$AppDatabase, $SceneDtoTable> {
  $$SceneDtoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> sceneSnapshotDtoRefs<T extends Object>(
      Expression<T> Function($$SceneSnapshotDtoTableAnnotationComposer a) f) {
    final $$SceneSnapshotDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> gameObjectDtoRefs<T extends Object>(
      Expression<T> Function($$GameObjectDtoTableAnnotationComposer a) f) {
    final $$GameObjectDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectDto,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.gameObjectDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneDtoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SceneDtoTable,
    Scene,
    $$SceneDtoTableFilterComposer,
    $$SceneDtoTableOrderingComposer,
    $$SceneDtoTableAnnotationComposer,
    $$SceneDtoTableCreateCompanionBuilder,
    $$SceneDtoTableUpdateCompanionBuilder,
    (Scene, $$SceneDtoTableReferences),
    Scene,
    PrefetchHooks Function(
        {bool sceneSnapshotDtoRefs, bool gameObjectDtoRefs})> {
  $$SceneDtoTableTableManager(_$AppDatabase db, $SceneDtoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SceneDtoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SceneDtoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SceneDtoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneDtoCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneDtoCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SceneDtoTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {sceneSnapshotDtoRefs = false, gameObjectDtoRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (sceneSnapshotDtoRefs) db.sceneSnapshotDto,
                if (gameObjectDtoRefs) db.gameObjectDto
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (sceneSnapshotDtoRefs)
                    await $_getPrefetchedData<Scene, $SceneDtoTable,
                            SceneSnapshot>(
                        currentTable: table,
                        referencedTable: $$SceneDtoTableReferences
                            ._sceneSnapshotDtoRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SceneDtoTableReferences(db, table, p0)
                                .sceneSnapshotDtoRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sceneId == item.id),
                        typedResults: items),
                  if (gameObjectDtoRefs)
                    await $_getPrefetchedData<Scene, $SceneDtoTable,
                            GameObject>(
                        currentTable: table,
                        referencedTable: $$SceneDtoTableReferences
                            ._gameObjectDtoRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SceneDtoTableReferences(db, table, p0)
                                .gameObjectDtoRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sceneId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SceneDtoTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SceneDtoTable,
    Scene,
    $$SceneDtoTableFilterComposer,
    $$SceneDtoTableOrderingComposer,
    $$SceneDtoTableAnnotationComposer,
    $$SceneDtoTableCreateCompanionBuilder,
    $$SceneDtoTableUpdateCompanionBuilder,
    (Scene, $$SceneDtoTableReferences),
    Scene,
    PrefetchHooks Function(
        {bool sceneSnapshotDtoRefs, bool gameObjectDtoRefs})>;
typedef $$SceneSnapshotDtoTableCreateCompanionBuilder
    = SceneSnapshotDtoCompanion Function({
  required String id,
  required String description,
  required String sceneId,
  required String parentId,
  Value<int> rowid,
});
typedef $$SceneSnapshotDtoTableUpdateCompanionBuilder
    = SceneSnapshotDtoCompanion Function({
  Value<String> id,
  Value<String> description,
  Value<String> sceneId,
  Value<String> parentId,
  Value<int> rowid,
});

final class $$SceneSnapshotDtoTableReferences extends BaseReferences<
    _$AppDatabase, $SceneSnapshotDtoTable, SceneSnapshot> {
  $$SceneSnapshotDtoTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SceneDtoTable _sceneIdTable(_$AppDatabase db) =>
      db.sceneDto.createAlias(
          $_aliasNameGenerator(db.sceneSnapshotDto.sceneId, db.sceneDto.id));

  $$SceneDtoTableProcessedTableManager get sceneId {
    final $_column = $_itemColumn<String>('scene_id')!;

    final manager = $$SceneDtoTableTableManager($_db, $_db.sceneDto)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sceneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SceneSnapshotDtoTable _parentIdTable(_$AppDatabase db) =>
      db.sceneSnapshotDto.createAlias($_aliasNameGenerator(
          db.sceneSnapshotDto.parentId, db.sceneSnapshotDto.id));

  $$SceneSnapshotDtoTableProcessedTableManager get parentId {
    final $_column = $_itemColumn<String>('parent_id')!;

    final manager =
        $$SceneSnapshotDtoTableTableManager($_db, $_db.sceneSnapshotDto)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$GameObjectDtoTable, List<GameObject>>
      _gameObjectDtoRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gameObjectDto,
              aliasName: $_aliasNameGenerator(
                  db.sceneSnapshotDto.id, db.gameObjectDto.sceneSnapshotId));

  $$GameObjectDtoTableProcessedTableManager get gameObjectDtoRefs {
    final manager = $$GameObjectDtoTableTableManager($_db, $_db.gameObjectDto)
        .filter(
            (f) => f.sceneSnapshotId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_gameObjectDtoRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SceneSnapshotDtoTableFilterComposer
    extends Composer<_$AppDatabase, $SceneSnapshotDtoTable> {
  $$SceneSnapshotDtoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  $$SceneDtoTableFilterComposer get sceneId {
    final $$SceneDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneDtoTableFilterComposer(
              $db: $db,
              $table: $db.sceneDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotDtoTableFilterComposer get parentId {
    final $$SceneSnapshotDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableFilterComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> gameObjectDtoRefs(
      Expression<bool> Function($$GameObjectDtoTableFilterComposer f) f) {
    final $$GameObjectDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectDto,
        getReferencedColumn: (t) => t.sceneSnapshotId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectDtoTableFilterComposer(
              $db: $db,
              $table: $db.gameObjectDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneSnapshotDtoTableOrderingComposer
    extends Composer<_$AppDatabase, $SceneSnapshotDtoTable> {
  $$SceneSnapshotDtoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  $$SceneDtoTableOrderingComposer get sceneId {
    final $$SceneDtoTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneDtoTableOrderingComposer(
              $db: $db,
              $table: $db.sceneDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotDtoTableOrderingComposer get parentId {
    final $$SceneSnapshotDtoTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableOrderingComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SceneSnapshotDtoTableAnnotationComposer
    extends Composer<_$AppDatabase, $SceneSnapshotDtoTable> {
  $$SceneSnapshotDtoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  $$SceneDtoTableAnnotationComposer get sceneId {
    final $$SceneDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotDtoTableAnnotationComposer get parentId {
    final $$SceneSnapshotDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> gameObjectDtoRefs<T extends Object>(
      Expression<T> Function($$GameObjectDtoTableAnnotationComposer a) f) {
    final $$GameObjectDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectDto,
        getReferencedColumn: (t) => t.sceneSnapshotId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.gameObjectDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneSnapshotDtoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SceneSnapshotDtoTable,
    SceneSnapshot,
    $$SceneSnapshotDtoTableFilterComposer,
    $$SceneSnapshotDtoTableOrderingComposer,
    $$SceneSnapshotDtoTableAnnotationComposer,
    $$SceneSnapshotDtoTableCreateCompanionBuilder,
    $$SceneSnapshotDtoTableUpdateCompanionBuilder,
    (SceneSnapshot, $$SceneSnapshotDtoTableReferences),
    SceneSnapshot,
    PrefetchHooks Function(
        {bool sceneId, bool parentId, bool gameObjectDtoRefs})> {
  $$SceneSnapshotDtoTableTableManager(
      _$AppDatabase db, $SceneSnapshotDtoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SceneSnapshotDtoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SceneSnapshotDtoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SceneSnapshotDtoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> sceneId = const Value.absent(),
            Value<String> parentId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneSnapshotDtoCompanion(
            id: id,
            description: description,
            sceneId: sceneId,
            parentId: parentId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String description,
            required String sceneId,
            required String parentId,
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneSnapshotDtoCompanion.insert(
            id: id,
            description: description,
            sceneId: sceneId,
            parentId: parentId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SceneSnapshotDtoTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {sceneId = false, parentId = false, gameObjectDtoRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gameObjectDtoRefs) db.gameObjectDto
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (sceneId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sceneId,
                    referencedTable:
                        $$SceneSnapshotDtoTableReferences._sceneIdTable(db),
                    referencedColumn:
                        $$SceneSnapshotDtoTableReferences._sceneIdTable(db).id,
                  ) as T;
                }
                if (parentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parentId,
                    referencedTable:
                        $$SceneSnapshotDtoTableReferences._parentIdTable(db),
                    referencedColumn:
                        $$SceneSnapshotDtoTableReferences._parentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gameObjectDtoRefs)
                    await $_getPrefetchedData<SceneSnapshot, $SceneSnapshotDtoTable,
                            GameObject>(
                        currentTable: table,
                        referencedTable: $$SceneSnapshotDtoTableReferences
                            ._gameObjectDtoRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SceneSnapshotDtoTableReferences(db, table, p0)
                                .gameObjectDtoRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.sceneSnapshotId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SceneSnapshotDtoTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SceneSnapshotDtoTable,
    SceneSnapshot,
    $$SceneSnapshotDtoTableFilterComposer,
    $$SceneSnapshotDtoTableOrderingComposer,
    $$SceneSnapshotDtoTableAnnotationComposer,
    $$SceneSnapshotDtoTableCreateCompanionBuilder,
    $$SceneSnapshotDtoTableUpdateCompanionBuilder,
    (SceneSnapshot, $$SceneSnapshotDtoTableReferences),
    SceneSnapshot,
    PrefetchHooks Function(
        {bool sceneId, bool parentId, bool gameObjectDtoRefs})>;
typedef $$GameObjectDtoTableCreateCompanionBuilder = GameObjectDtoCompanion
    Function({
  required String id,
  required String name,
  Value<String?> sceneId,
  Value<String?> sceneSnapshotId,
  required int positionX,
  required int positionY,
  required int color,
  required String shape,
  required int width,
  required int height,
  Value<int> rowid,
});
typedef $$GameObjectDtoTableUpdateCompanionBuilder = GameObjectDtoCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<String?> sceneId,
  Value<String?> sceneSnapshotId,
  Value<int> positionX,
  Value<int> positionY,
  Value<int> color,
  Value<String> shape,
  Value<int> width,
  Value<int> height,
  Value<int> rowid,
});

final class $$GameObjectDtoTableReferences
    extends BaseReferences<_$AppDatabase, $GameObjectDtoTable, GameObject> {
  $$GameObjectDtoTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SceneDtoTable _sceneIdTable(_$AppDatabase db) =>
      db.sceneDto.createAlias(
          $_aliasNameGenerator(db.gameObjectDto.sceneId, db.sceneDto.id));

  $$SceneDtoTableProcessedTableManager? get sceneId {
    final $_column = $_itemColumn<String>('scene_id');
    if ($_column == null) return null;
    final manager = $$SceneDtoTableTableManager($_db, $_db.sceneDto)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sceneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SceneSnapshotDtoTable _sceneSnapshotIdTable(_$AppDatabase db) =>
      db.sceneSnapshotDto.createAlias($_aliasNameGenerator(
          db.gameObjectDto.sceneSnapshotId, db.sceneSnapshotDto.id));

  $$SceneSnapshotDtoTableProcessedTableManager? get sceneSnapshotId {
    final $_column = $_itemColumn<String>('scene_snapshot_id');
    if ($_column == null) return null;
    final manager =
        $$SceneSnapshotDtoTableTableManager($_db, $_db.sceneSnapshotDto)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sceneSnapshotIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GameObjectDtoTableFilterComposer
    extends Composer<_$AppDatabase, $GameObjectDtoTable> {
  $$GameObjectDtoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get positionX => $composableBuilder(
      column: $table.positionX, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get positionY => $composableBuilder(
      column: $table.positionY, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get shape => $composableBuilder(
      column: $table.shape, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  $$SceneDtoTableFilterComposer get sceneId {
    final $$SceneDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneDtoTableFilterComposer(
              $db: $db,
              $table: $db.sceneDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotDtoTableFilterComposer get sceneSnapshotId {
    final $$SceneSnapshotDtoTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneSnapshotId,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableFilterComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GameObjectDtoTableOrderingComposer
    extends Composer<_$AppDatabase, $GameObjectDtoTable> {
  $$GameObjectDtoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get positionX => $composableBuilder(
      column: $table.positionX, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get positionY => $composableBuilder(
      column: $table.positionY, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get shape => $composableBuilder(
      column: $table.shape, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  $$SceneDtoTableOrderingComposer get sceneId {
    final $$SceneDtoTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneDtoTableOrderingComposer(
              $db: $db,
              $table: $db.sceneDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotDtoTableOrderingComposer get sceneSnapshotId {
    final $$SceneSnapshotDtoTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneSnapshotId,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableOrderingComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GameObjectDtoTableAnnotationComposer
    extends Composer<_$AppDatabase, $GameObjectDtoTable> {
  $$GameObjectDtoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get positionX =>
      $composableBuilder(column: $table.positionX, builder: (column) => column);

  GeneratedColumn<int> get positionY =>
      $composableBuilder(column: $table.positionY, builder: (column) => column);

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get shape =>
      $composableBuilder(column: $table.shape, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  $$SceneDtoTableAnnotationComposer get sceneId {
    final $$SceneDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotDtoTableAnnotationComposer get sceneSnapshotId {
    final $$SceneSnapshotDtoTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneSnapshotId,
        referencedTable: $db.sceneSnapshotDto,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotDtoTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneSnapshotDto,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GameObjectDtoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GameObjectDtoTable,
    GameObject,
    $$GameObjectDtoTableFilterComposer,
    $$GameObjectDtoTableOrderingComposer,
    $$GameObjectDtoTableAnnotationComposer,
    $$GameObjectDtoTableCreateCompanionBuilder,
    $$GameObjectDtoTableUpdateCompanionBuilder,
    (GameObject, $$GameObjectDtoTableReferences),
    GameObject,
    PrefetchHooks Function({bool sceneId, bool sceneSnapshotId})> {
  $$GameObjectDtoTableTableManager(_$AppDatabase db, $GameObjectDtoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GameObjectDtoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GameObjectDtoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GameObjectDtoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> sceneId = const Value.absent(),
            Value<String?> sceneSnapshotId = const Value.absent(),
            Value<int> positionX = const Value.absent(),
            Value<int> positionY = const Value.absent(),
            Value<int> color = const Value.absent(),
            Value<String> shape = const Value.absent(),
            Value<int> width = const Value.absent(),
            Value<int> height = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GameObjectDtoCompanion(
            id: id,
            name: name,
            sceneId: sceneId,
            sceneSnapshotId: sceneSnapshotId,
            positionX: positionX,
            positionY: positionY,
            color: color,
            shape: shape,
            width: width,
            height: height,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<String?> sceneId = const Value.absent(),
            Value<String?> sceneSnapshotId = const Value.absent(),
            required int positionX,
            required int positionY,
            required int color,
            required String shape,
            required int width,
            required int height,
            Value<int> rowid = const Value.absent(),
          }) =>
              GameObjectDtoCompanion.insert(
            id: id,
            name: name,
            sceneId: sceneId,
            sceneSnapshotId: sceneSnapshotId,
            positionX: positionX,
            positionY: positionY,
            color: color,
            shape: shape,
            width: width,
            height: height,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$GameObjectDtoTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({sceneId = false, sceneSnapshotId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (sceneId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sceneId,
                    referencedTable:
                        $$GameObjectDtoTableReferences._sceneIdTable(db),
                    referencedColumn:
                        $$GameObjectDtoTableReferences._sceneIdTable(db).id,
                  ) as T;
                }
                if (sceneSnapshotId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sceneSnapshotId,
                    referencedTable: $$GameObjectDtoTableReferences
                        ._sceneSnapshotIdTable(db),
                    referencedColumn: $$GameObjectDtoTableReferences
                        ._sceneSnapshotIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$GameObjectDtoTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GameObjectDtoTable,
    GameObject,
    $$GameObjectDtoTableFilterComposer,
    $$GameObjectDtoTableOrderingComposer,
    $$GameObjectDtoTableAnnotationComposer,
    $$GameObjectDtoTableCreateCompanionBuilder,
    $$GameObjectDtoTableUpdateCompanionBuilder,
    (GameObject, $$GameObjectDtoTableReferences),
    GameObject,
    PrefetchHooks Function({bool sceneId, bool sceneSnapshotId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SceneDtoTableTableManager get sceneDto =>
      $$SceneDtoTableTableManager(_db, _db.sceneDto);
  $$SceneSnapshotDtoTableTableManager get sceneSnapshotDto =>
      $$SceneSnapshotDtoTableTableManager(_db, _db.sceneSnapshotDto);
  $$GameObjectDtoTableTableManager get gameObjectDto =>
      $$GameObjectDtoTableTableManager(_db, _db.gameObjectDto);
}
