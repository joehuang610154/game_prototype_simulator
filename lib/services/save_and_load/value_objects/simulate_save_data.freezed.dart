// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulate_save_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimulateSaveData _$SimulateSaveDataFromJson(Map<String, dynamic> json) {
  return _SimulateSaveData.fromJson(json);
}

/// @nodoc
mixin _$SimulateSaveData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SimulateSaveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimulateSaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimulateSaveDataCopyWith<SimulateSaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulateSaveDataCopyWith<$Res> {
  factory $SimulateSaveDataCopyWith(
          SimulateSaveData value, $Res Function(SimulateSaveData) then) =
      _$SimulateSaveDataCopyWithImpl<$Res, SimulateSaveData>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SimulateSaveDataCopyWithImpl<$Res, $Val extends SimulateSaveData>
    implements $SimulateSaveDataCopyWith<$Res> {
  _$SimulateSaveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimulateSaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulateSaveDataImplCopyWith<$Res>
    implements $SimulateSaveDataCopyWith<$Res> {
  factory _$$SimulateSaveDataImplCopyWith(_$SimulateSaveDataImpl value,
          $Res Function(_$SimulateSaveDataImpl) then) =
      __$$SimulateSaveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$SimulateSaveDataImplCopyWithImpl<$Res>
    extends _$SimulateSaveDataCopyWithImpl<$Res, _$SimulateSaveDataImpl>
    implements _$$SimulateSaveDataImplCopyWith<$Res> {
  __$$SimulateSaveDataImplCopyWithImpl(_$SimulateSaveDataImpl _value,
      $Res Function(_$SimulateSaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimulateSaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SimulateSaveDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimulateSaveDataImpl extends _SimulateSaveData {
  const _$SimulateSaveDataImpl({required this.id, required this.name})
      : super._();

  factory _$SimulateSaveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimulateSaveDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SimulateSaveData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimulateSaveDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SimulateSaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulateSaveDataImplCopyWith<_$SimulateSaveDataImpl> get copyWith =>
      __$$SimulateSaveDataImplCopyWithImpl<_$SimulateSaveDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimulateSaveDataImplToJson(
      this,
    );
  }
}

abstract class _SimulateSaveData extends SimulateSaveData {
  const factory _SimulateSaveData(
      {required final int id,
      required final String name}) = _$SimulateSaveDataImpl;
  const _SimulateSaveData._() : super._();

  factory _SimulateSaveData.fromJson(Map<String, dynamic> json) =
      _$SimulateSaveDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of SimulateSaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimulateSaveDataImplCopyWith<_$SimulateSaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
