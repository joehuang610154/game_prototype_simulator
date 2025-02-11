// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $SceneTableTable extends SceneTable
    with TableInfo<$SceneTableTable, SceneDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SceneTableTable(this.attachedDatabase, [this._alias]);
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
  static const String $name = 'scene_table';
  @override
  VerificationContext validateIntegrity(Insertable<SceneDto> instance,
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
  SceneDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SceneDto(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $SceneTableTable createAlias(String alias) {
    return $SceneTableTable(attachedDatabase, alias);
  }
}

class SceneDto extends DataClass implements Insertable<SceneDto> {
  final String id;
  final String name;
  const SceneDto({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  SceneTableCompanion toCompanion(bool nullToAbsent) {
    return SceneTableCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory SceneDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SceneDto(
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

  SceneDto copyWith({String? id, String? name}) => SceneDto(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  SceneDto copyWithCompanion(SceneTableCompanion data) {
    return SceneDto(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SceneDto(')
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
      (other is SceneDto && other.id == this.id && other.name == this.name);
}

class SceneTableCompanion extends UpdateCompanion<SceneDto> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const SceneTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SceneTableCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<SceneDto> custom({
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

  SceneTableCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return SceneTableCompanion(
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
    return (StringBuffer('SceneTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SceneSnapshotTableTable extends SceneSnapshotTable
    with TableInfo<$SceneSnapshotTableTable, SceneSnapshotDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SceneSnapshotTableTable(this.attachedDatabase, [this._alias]);
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
          GeneratedColumn.constraintIsAlways('REFERENCES scene_table (id)'));
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<String> parentId = GeneratedColumn<String>(
      'parent_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES scene_snapshot_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, description, sceneId, parentId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scene_snapshot_table';
  @override
  VerificationContext validateIntegrity(Insertable<SceneSnapshotDto> instance,
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
  SceneSnapshotDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SceneSnapshotDto(
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
  $SceneSnapshotTableTable createAlias(String alias) {
    return $SceneSnapshotTableTable(attachedDatabase, alias);
  }
}

class SceneSnapshotDto extends DataClass
    implements Insertable<SceneSnapshotDto> {
  final String id;
  final String description;
  final String sceneId;
  final String parentId;
  const SceneSnapshotDto(
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

  SceneSnapshotTableCompanion toCompanion(bool nullToAbsent) {
    return SceneSnapshotTableCompanion(
      id: Value(id),
      description: Value(description),
      sceneId: Value(sceneId),
      parentId: Value(parentId),
    );
  }

  factory SceneSnapshotDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SceneSnapshotDto(
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

  SceneSnapshotDto copyWith(
          {String? id,
          String? description,
          String? sceneId,
          String? parentId}) =>
      SceneSnapshotDto(
        id: id ?? this.id,
        description: description ?? this.description,
        sceneId: sceneId ?? this.sceneId,
        parentId: parentId ?? this.parentId,
      );
  SceneSnapshotDto copyWithCompanion(SceneSnapshotTableCompanion data) {
    return SceneSnapshotDto(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      sceneId: data.sceneId.present ? data.sceneId.value : this.sceneId,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SceneSnapshotDto(')
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
      (other is SceneSnapshotDto &&
          other.id == this.id &&
          other.description == this.description &&
          other.sceneId == this.sceneId &&
          other.parentId == this.parentId);
}

class SceneSnapshotTableCompanion extends UpdateCompanion<SceneSnapshotDto> {
  final Value<String> id;
  final Value<String> description;
  final Value<String> sceneId;
  final Value<String> parentId;
  final Value<int> rowid;
  const SceneSnapshotTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.sceneId = const Value.absent(),
    this.parentId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SceneSnapshotTableCompanion.insert({
    required String id,
    required String description,
    required String sceneId,
    required String parentId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        description = Value(description),
        sceneId = Value(sceneId),
        parentId = Value(parentId);
  static Insertable<SceneSnapshotDto> custom({
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

  SceneSnapshotTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? description,
      Value<String>? sceneId,
      Value<String>? parentId,
      Value<int>? rowid}) {
    return SceneSnapshotTableCompanion(
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
    return (StringBuffer('SceneSnapshotTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('sceneId: $sceneId, ')
          ..write('parentId: $parentId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GameObjectTableTable extends GameObjectTable
    with TableInfo<$GameObjectTableTable, GameObjectDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GameObjectTableTable(this.attachedDatabase, [this._alias]);
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
          GeneratedColumn.constraintIsAlways('REFERENCES scene_table (id)'));
  static const VerificationMeta _sceneSnapshotIdMeta =
      const VerificationMeta('sceneSnapshotId');
  @override
  late final GeneratedColumn<String> sceneSnapshotId = GeneratedColumn<String>(
      'scene_snapshot_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES scene_snapshot_table (id)'));
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
  static const String $name = 'game_object_table';
  @override
  VerificationContext validateIntegrity(Insertable<GameObjectDto> instance,
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
  GameObjectDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GameObjectDto(
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
  $GameObjectTableTable createAlias(String alias) {
    return $GameObjectTableTable(attachedDatabase, alias);
  }
}

class GameObjectDto extends DataClass implements Insertable<GameObjectDto> {
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
  const GameObjectDto(
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

  GameObjectTableCompanion toCompanion(bool nullToAbsent) {
    return GameObjectTableCompanion(
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

  factory GameObjectDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GameObjectDto(
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

  GameObjectDto copyWith(
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
      GameObjectDto(
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
  GameObjectDto copyWithCompanion(GameObjectTableCompanion data) {
    return GameObjectDto(
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
    return (StringBuffer('GameObjectDto(')
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
      (other is GameObjectDto &&
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

class GameObjectTableCompanion extends UpdateCompanion<GameObjectDto> {
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
  const GameObjectTableCompanion({
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
  GameObjectTableCompanion.insert({
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
  static Insertable<GameObjectDto> custom({
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

  GameObjectTableCompanion copyWith(
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
    return GameObjectTableCompanion(
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
    return (StringBuffer('GameObjectTableCompanion(')
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
  late final $SceneTableTable sceneTable = $SceneTableTable(this);
  late final $SceneSnapshotTableTable sceneSnapshotTable =
      $SceneSnapshotTableTable(this);
  late final $GameObjectTableTable gameObjectTable =
      $GameObjectTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [sceneTable, sceneSnapshotTable, gameObjectTable];
}

typedef $$SceneTableTableCreateCompanionBuilder = SceneTableCompanion Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$SceneTableTableUpdateCompanionBuilder = SceneTableCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

final class $$SceneTableTableReferences
    extends BaseReferences<_$AppDatabase, $SceneTableTable, SceneDto> {
  $$SceneTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SceneSnapshotTableTable, List<SceneSnapshotDto>>
      _sceneSnapshotTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.sceneSnapshotTable,
              aliasName: $_aliasNameGenerator(
                  db.sceneTable.id, db.sceneSnapshotTable.sceneId));

  $$SceneSnapshotTableTableProcessedTableManager get sceneSnapshotTableRefs {
    final manager =
        $$SceneSnapshotTableTableTableManager($_db, $_db.sceneSnapshotTable)
            .filter((f) => f.sceneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_sceneSnapshotTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$GameObjectTableTable, List<GameObjectDto>>
      _gameObjectTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gameObjectTable,
              aliasName: $_aliasNameGenerator(
                  db.sceneTable.id, db.gameObjectTable.sceneId));

  $$GameObjectTableTableProcessedTableManager get gameObjectTableRefs {
    final manager =
        $$GameObjectTableTableTableManager($_db, $_db.gameObjectTable)
            .filter((f) => f.sceneId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_gameObjectTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SceneTableTableFilterComposer
    extends Composer<_$AppDatabase, $SceneTableTable> {
  $$SceneTableTableFilterComposer({
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

  Expression<bool> sceneSnapshotTableRefs(
      Expression<bool> Function($$SceneSnapshotTableTableFilterComposer f) f) {
    final $$SceneSnapshotTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sceneSnapshotTable,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotTableTableFilterComposer(
              $db: $db,
              $table: $db.sceneSnapshotTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> gameObjectTableRefs(
      Expression<bool> Function($$GameObjectTableTableFilterComposer f) f) {
    final $$GameObjectTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectTable,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectTableTableFilterComposer(
              $db: $db,
              $table: $db.gameObjectTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SceneTableTable> {
  $$SceneTableTableOrderingComposer({
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

class $$SceneTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SceneTableTable> {
  $$SceneTableTableAnnotationComposer({
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

  Expression<T> sceneSnapshotTableRefs<T extends Object>(
      Expression<T> Function($$SceneSnapshotTableTableAnnotationComposer a) f) {
    final $$SceneSnapshotTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.sceneSnapshotTable,
            getReferencedColumn: (t) => t.sceneId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$SceneSnapshotTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.sceneSnapshotTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> gameObjectTableRefs<T extends Object>(
      Expression<T> Function($$GameObjectTableTableAnnotationComposer a) f) {
    final $$GameObjectTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectTable,
        getReferencedColumn: (t) => t.sceneId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectTableTableAnnotationComposer(
              $db: $db,
              $table: $db.gameObjectTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SceneTableTable,
    SceneDto,
    $$SceneTableTableFilterComposer,
    $$SceneTableTableOrderingComposer,
    $$SceneTableTableAnnotationComposer,
    $$SceneTableTableCreateCompanionBuilder,
    $$SceneTableTableUpdateCompanionBuilder,
    (SceneDto, $$SceneTableTableReferences),
    SceneDto,
    PrefetchHooks Function(
        {bool sceneSnapshotTableRefs, bool gameObjectTableRefs})> {
  $$SceneTableTableTableManager(_$AppDatabase db, $SceneTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SceneTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SceneTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SceneTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneTableCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneTableCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SceneTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {sceneSnapshotTableRefs = false, gameObjectTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (sceneSnapshotTableRefs) db.sceneSnapshotTable,
                if (gameObjectTableRefs) db.gameObjectTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (sceneSnapshotTableRefs)
                    await $_getPrefetchedData<SceneDto, $SceneTableTable,
                            SceneSnapshotDto>(
                        currentTable: table,
                        referencedTable: $$SceneTableTableReferences
                            ._sceneSnapshotTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SceneTableTableReferences(db, table, p0)
                                .sceneSnapshotTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.sceneId == item.id),
                        typedResults: items),
                  if (gameObjectTableRefs)
                    await $_getPrefetchedData<SceneDto, $SceneTableTable,
                            GameObjectDto>(
                        currentTable: table,
                        referencedTable: $$SceneTableTableReferences
                            ._gameObjectTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SceneTableTableReferences(db, table, p0)
                                .gameObjectTableRefs,
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

typedef $$SceneTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SceneTableTable,
    SceneDto,
    $$SceneTableTableFilterComposer,
    $$SceneTableTableOrderingComposer,
    $$SceneTableTableAnnotationComposer,
    $$SceneTableTableCreateCompanionBuilder,
    $$SceneTableTableUpdateCompanionBuilder,
    (SceneDto, $$SceneTableTableReferences),
    SceneDto,
    PrefetchHooks Function(
        {bool sceneSnapshotTableRefs, bool gameObjectTableRefs})>;
typedef $$SceneSnapshotTableTableCreateCompanionBuilder
    = SceneSnapshotTableCompanion Function({
  required String id,
  required String description,
  required String sceneId,
  required String parentId,
  Value<int> rowid,
});
typedef $$SceneSnapshotTableTableUpdateCompanionBuilder
    = SceneSnapshotTableCompanion Function({
  Value<String> id,
  Value<String> description,
  Value<String> sceneId,
  Value<String> parentId,
  Value<int> rowid,
});

final class $$SceneSnapshotTableTableReferences extends BaseReferences<
    _$AppDatabase, $SceneSnapshotTableTable, SceneSnapshotDto> {
  $$SceneSnapshotTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SceneTableTable _sceneIdTable(_$AppDatabase db) =>
      db.sceneTable.createAlias($_aliasNameGenerator(
          db.sceneSnapshotTable.sceneId, db.sceneTable.id));

  $$SceneTableTableProcessedTableManager get sceneId {
    final $_column = $_itemColumn<String>('scene_id')!;

    final manager = $$SceneTableTableTableManager($_db, $_db.sceneTable)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sceneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SceneSnapshotTableTable _parentIdTable(_$AppDatabase db) =>
      db.sceneSnapshotTable.createAlias($_aliasNameGenerator(
          db.sceneSnapshotTable.parentId, db.sceneSnapshotTable.id));

  $$SceneSnapshotTableTableProcessedTableManager get parentId {
    final $_column = $_itemColumn<String>('parent_id')!;

    final manager =
        $$SceneSnapshotTableTableTableManager($_db, $_db.sceneSnapshotTable)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$GameObjectTableTable, List<GameObjectDto>>
      _gameObjectTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.gameObjectTable,
              aliasName: $_aliasNameGenerator(db.sceneSnapshotTable.id,
                  db.gameObjectTable.sceneSnapshotId));

  $$GameObjectTableTableProcessedTableManager get gameObjectTableRefs {
    final manager =
        $$GameObjectTableTableTableManager($_db, $_db.gameObjectTable).filter(
            (f) => f.sceneSnapshotId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_gameObjectTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SceneSnapshotTableTableFilterComposer
    extends Composer<_$AppDatabase, $SceneSnapshotTableTable> {
  $$SceneSnapshotTableTableFilterComposer({
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

  $$SceneTableTableFilterComposer get sceneId {
    final $$SceneTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneTableTableFilterComposer(
              $db: $db,
              $table: $db.sceneTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotTableTableFilterComposer get parentId {
    final $$SceneSnapshotTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $db.sceneSnapshotTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotTableTableFilterComposer(
              $db: $db,
              $table: $db.sceneSnapshotTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> gameObjectTableRefs(
      Expression<bool> Function($$GameObjectTableTableFilterComposer f) f) {
    final $$GameObjectTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectTable,
        getReferencedColumn: (t) => t.sceneSnapshotId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectTableTableFilterComposer(
              $db: $db,
              $table: $db.gameObjectTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneSnapshotTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SceneSnapshotTableTable> {
  $$SceneSnapshotTableTableOrderingComposer({
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

  $$SceneTableTableOrderingComposer get sceneId {
    final $$SceneTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneTableTableOrderingComposer(
              $db: $db,
              $table: $db.sceneTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotTableTableOrderingComposer get parentId {
    final $$SceneSnapshotTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parentId,
        referencedTable: $db.sceneSnapshotTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotTableTableOrderingComposer(
              $db: $db,
              $table: $db.sceneSnapshotTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SceneSnapshotTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SceneSnapshotTableTable> {
  $$SceneSnapshotTableTableAnnotationComposer({
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

  $$SceneTableTableAnnotationComposer get sceneId {
    final $$SceneTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneTableTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotTableTableAnnotationComposer get parentId {
    final $$SceneSnapshotTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.parentId,
            referencedTable: $db.sceneSnapshotTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$SceneSnapshotTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.sceneSnapshotTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }

  Expression<T> gameObjectTableRefs<T extends Object>(
      Expression<T> Function($$GameObjectTableTableAnnotationComposer a) f) {
    final $$GameObjectTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.gameObjectTable,
        getReferencedColumn: (t) => t.sceneSnapshotId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$GameObjectTableTableAnnotationComposer(
              $db: $db,
              $table: $db.gameObjectTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SceneSnapshotTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SceneSnapshotTableTable,
    SceneSnapshotDto,
    $$SceneSnapshotTableTableFilterComposer,
    $$SceneSnapshotTableTableOrderingComposer,
    $$SceneSnapshotTableTableAnnotationComposer,
    $$SceneSnapshotTableTableCreateCompanionBuilder,
    $$SceneSnapshotTableTableUpdateCompanionBuilder,
    (SceneSnapshotDto, $$SceneSnapshotTableTableReferences),
    SceneSnapshotDto,
    PrefetchHooks Function(
        {bool sceneId, bool parentId, bool gameObjectTableRefs})> {
  $$SceneSnapshotTableTableTableManager(
      _$AppDatabase db, $SceneSnapshotTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SceneSnapshotTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SceneSnapshotTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SceneSnapshotTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> sceneId = const Value.absent(),
            Value<String> parentId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SceneSnapshotTableCompanion(
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
              SceneSnapshotTableCompanion.insert(
            id: id,
            description: description,
            sceneId: sceneId,
            parentId: parentId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SceneSnapshotTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {sceneId = false,
              parentId = false,
              gameObjectTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (gameObjectTableRefs) db.gameObjectTable
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
                        $$SceneSnapshotTableTableReferences._sceneIdTable(db),
                    referencedColumn: $$SceneSnapshotTableTableReferences
                        ._sceneIdTable(db)
                        .id,
                  ) as T;
                }
                if (parentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parentId,
                    referencedTable:
                        $$SceneSnapshotTableTableReferences._parentIdTable(db),
                    referencedColumn: $$SceneSnapshotTableTableReferences
                        ._parentIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gameObjectTableRefs)
                    await $_getPrefetchedData<SceneSnapshotDto,
                            $SceneSnapshotTableTable, GameObjectDto>(
                        currentTable: table,
                        referencedTable: $$SceneSnapshotTableTableReferences
                            ._gameObjectTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SceneSnapshotTableTableReferences(db, table, p0)
                                .gameObjectTableRefs,
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

typedef $$SceneSnapshotTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SceneSnapshotTableTable,
    SceneSnapshotDto,
    $$SceneSnapshotTableTableFilterComposer,
    $$SceneSnapshotTableTableOrderingComposer,
    $$SceneSnapshotTableTableAnnotationComposer,
    $$SceneSnapshotTableTableCreateCompanionBuilder,
    $$SceneSnapshotTableTableUpdateCompanionBuilder,
    (SceneSnapshotDto, $$SceneSnapshotTableTableReferences),
    SceneSnapshotDto,
    PrefetchHooks Function(
        {bool sceneId, bool parentId, bool gameObjectTableRefs})>;
typedef $$GameObjectTableTableCreateCompanionBuilder = GameObjectTableCompanion
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
typedef $$GameObjectTableTableUpdateCompanionBuilder = GameObjectTableCompanion
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

final class $$GameObjectTableTableReferences extends BaseReferences<
    _$AppDatabase, $GameObjectTableTable, GameObjectDto> {
  $$GameObjectTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SceneTableTable _sceneIdTable(_$AppDatabase db) =>
      db.sceneTable.createAlias(
          $_aliasNameGenerator(db.gameObjectTable.sceneId, db.sceneTable.id));

  $$SceneTableTableProcessedTableManager? get sceneId {
    final $_column = $_itemColumn<String>('scene_id');
    if ($_column == null) return null;
    final manager = $$SceneTableTableTableManager($_db, $_db.sceneTable)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sceneIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $SceneSnapshotTableTable _sceneSnapshotIdTable(_$AppDatabase db) =>
      db.sceneSnapshotTable.createAlias($_aliasNameGenerator(
          db.gameObjectTable.sceneSnapshotId, db.sceneSnapshotTable.id));

  $$SceneSnapshotTableTableProcessedTableManager? get sceneSnapshotId {
    final $_column = $_itemColumn<String>('scene_snapshot_id');
    if ($_column == null) return null;
    final manager =
        $$SceneSnapshotTableTableTableManager($_db, $_db.sceneSnapshotTable)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_sceneSnapshotIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$GameObjectTableTableFilterComposer
    extends Composer<_$AppDatabase, $GameObjectTableTable> {
  $$GameObjectTableTableFilterComposer({
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

  $$SceneTableTableFilterComposer get sceneId {
    final $$SceneTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneTableTableFilterComposer(
              $db: $db,
              $table: $db.sceneTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotTableTableFilterComposer get sceneSnapshotId {
    final $$SceneSnapshotTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneSnapshotId,
        referencedTable: $db.sceneSnapshotTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotTableTableFilterComposer(
              $db: $db,
              $table: $db.sceneSnapshotTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GameObjectTableTableOrderingComposer
    extends Composer<_$AppDatabase, $GameObjectTableTable> {
  $$GameObjectTableTableOrderingComposer({
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

  $$SceneTableTableOrderingComposer get sceneId {
    final $$SceneTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneTableTableOrderingComposer(
              $db: $db,
              $table: $db.sceneTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotTableTableOrderingComposer get sceneSnapshotId {
    final $$SceneSnapshotTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneSnapshotId,
        referencedTable: $db.sceneSnapshotTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneSnapshotTableTableOrderingComposer(
              $db: $db,
              $table: $db.sceneSnapshotTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$GameObjectTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $GameObjectTableTable> {
  $$GameObjectTableTableAnnotationComposer({
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

  $$SceneTableTableAnnotationComposer get sceneId {
    final $$SceneTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sceneId,
        referencedTable: $db.sceneTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SceneTableTableAnnotationComposer(
              $db: $db,
              $table: $db.sceneTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$SceneSnapshotTableTableAnnotationComposer get sceneSnapshotId {
    final $$SceneSnapshotTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.sceneSnapshotId,
            referencedTable: $db.sceneSnapshotTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$SceneSnapshotTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.sceneSnapshotTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$GameObjectTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GameObjectTableTable,
    GameObjectDto,
    $$GameObjectTableTableFilterComposer,
    $$GameObjectTableTableOrderingComposer,
    $$GameObjectTableTableAnnotationComposer,
    $$GameObjectTableTableCreateCompanionBuilder,
    $$GameObjectTableTableUpdateCompanionBuilder,
    (GameObjectDto, $$GameObjectTableTableReferences),
    GameObjectDto,
    PrefetchHooks Function({bool sceneId, bool sceneSnapshotId})> {
  $$GameObjectTableTableTableManager(
      _$AppDatabase db, $GameObjectTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GameObjectTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GameObjectTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GameObjectTableTableAnnotationComposer($db: db, $table: table),
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
              GameObjectTableCompanion(
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
              GameObjectTableCompanion.insert(
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
                    $$GameObjectTableTableReferences(db, table, e)
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
                        $$GameObjectTableTableReferences._sceneIdTable(db),
                    referencedColumn:
                        $$GameObjectTableTableReferences._sceneIdTable(db).id,
                  ) as T;
                }
                if (sceneSnapshotId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sceneSnapshotId,
                    referencedTable: $$GameObjectTableTableReferences
                        ._sceneSnapshotIdTable(db),
                    referencedColumn: $$GameObjectTableTableReferences
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

typedef $$GameObjectTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GameObjectTableTable,
    GameObjectDto,
    $$GameObjectTableTableFilterComposer,
    $$GameObjectTableTableOrderingComposer,
    $$GameObjectTableTableAnnotationComposer,
    $$GameObjectTableTableCreateCompanionBuilder,
    $$GameObjectTableTableUpdateCompanionBuilder,
    (GameObjectDto, $$GameObjectTableTableReferences),
    GameObjectDto,
    PrefetchHooks Function({bool sceneId, bool sceneSnapshotId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SceneTableTableTableManager get sceneTable =>
      $$SceneTableTableTableManager(_db, _db.sceneTable);
  $$SceneSnapshotTableTableTableManager get sceneSnapshotTable =>
      $$SceneSnapshotTableTableTableManager(_db, _db.sceneSnapshotTable);
  $$GameObjectTableTableTableManager get gameObjectTable =>
      $$GameObjectTableTableTableManager(_db, _db.gameObjectTable);
}
