// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveData _$SaveDataFromJson(Map<String, dynamic> json) {
  return _SaveData.fromJson(json);
}

/// @nodoc
mixin _$SaveData {
  List<SimulateSaveData> get simulate => throw _privateConstructorUsedError;

  /// Serializes this SaveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveDataCopyWith<SaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDataCopyWith<$Res> {
  factory $SaveDataCopyWith(SaveData value, $Res Function(SaveData) then) =
      _$SaveDataCopyWithImpl<$Res, SaveData>;
  @useResult
  $Res call({List<SimulateSaveData> simulate});
}

/// @nodoc
class _$SaveDataCopyWithImpl<$Res, $Val extends SaveData>
    implements $SaveDataCopyWith<$Res> {
  _$SaveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? simulate = null,
  }) {
    return _then(_value.copyWith(
      simulate: null == simulate
          ? _value.simulate
          : simulate // ignore: cast_nullable_to_non_nullable
              as List<SimulateSaveData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveDataImplCopyWith<$Res>
    implements $SaveDataCopyWith<$Res> {
  factory _$$SaveDataImplCopyWith(
          _$SaveDataImpl value, $Res Function(_$SaveDataImpl) then) =
      __$$SaveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SimulateSaveData> simulate});
}

/// @nodoc
class __$$SaveDataImplCopyWithImpl<$Res>
    extends _$SaveDataCopyWithImpl<$Res, _$SaveDataImpl>
    implements _$$SaveDataImplCopyWith<$Res> {
  __$$SaveDataImplCopyWithImpl(
      _$SaveDataImpl _value, $Res Function(_$SaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? simulate = null,
  }) {
    return _then(_$SaveDataImpl(
      simulate: null == simulate
          ? _value._simulate
          : simulate // ignore: cast_nullable_to_non_nullable
              as List<SimulateSaveData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveDataImpl extends _SaveData {
  const _$SaveDataImpl({required final List<SimulateSaveData> simulate})
      : _simulate = simulate,
        super._();

  factory _$SaveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveDataImplFromJson(json);

  final List<SimulateSaveData> _simulate;
  @override
  List<SimulateSaveData> get simulate {
    if (_simulate is EqualUnmodifiableListView) return _simulate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_simulate);
  }

  @override
  String toString() {
    return 'SaveData(simulate: $simulate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveDataImpl &&
            const DeepCollectionEquality().equals(other._simulate, _simulate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_simulate));

  /// Create a copy of SaveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveDataImplCopyWith<_$SaveDataImpl> get copyWith =>
      __$$SaveDataImplCopyWithImpl<_$SaveDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveDataImplToJson(
      this,
    );
  }
}

abstract class _SaveData extends SaveData {
  const factory _SaveData({required final List<SimulateSaveData> simulate}) =
      _$SaveDataImpl;
  const _SaveData._() : super._();

  factory _SaveData.fromJson(Map<String, dynamic> json) =
      _$SaveDataImpl.fromJson;

  @override
  List<SimulateSaveData> get simulate;

  /// Create a copy of SaveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveDataImplCopyWith<_$SaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
