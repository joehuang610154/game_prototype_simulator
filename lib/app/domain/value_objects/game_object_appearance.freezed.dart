// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_object_appearance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameObjectAppearance {
  GameObjectShape get shape => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Create a copy of GameObjectAppearance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameObjectAppearanceCopyWith<GameObjectAppearance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameObjectAppearanceCopyWith<$Res> {
  factory $GameObjectAppearanceCopyWith(GameObjectAppearance value,
          $Res Function(GameObjectAppearance) then) =
      _$GameObjectAppearanceCopyWithImpl<$Res, GameObjectAppearance>;
  @useResult
  $Res call({GameObjectShape shape, double width, double height});
}

/// @nodoc
class _$GameObjectAppearanceCopyWithImpl<$Res,
        $Val extends GameObjectAppearance>
    implements $GameObjectAppearanceCopyWith<$Res> {
  _$GameObjectAppearanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameObjectAppearance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shape = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as GameObjectShape,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameObjectAppearanceImplCopyWith<$Res>
    implements $GameObjectAppearanceCopyWith<$Res> {
  factory _$$GameObjectAppearanceImplCopyWith(_$GameObjectAppearanceImpl value,
          $Res Function(_$GameObjectAppearanceImpl) then) =
      __$$GameObjectAppearanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameObjectShape shape, double width, double height});
}

/// @nodoc
class __$$GameObjectAppearanceImplCopyWithImpl<$Res>
    extends _$GameObjectAppearanceCopyWithImpl<$Res, _$GameObjectAppearanceImpl>
    implements _$$GameObjectAppearanceImplCopyWith<$Res> {
  __$$GameObjectAppearanceImplCopyWithImpl(_$GameObjectAppearanceImpl _value,
      $Res Function(_$GameObjectAppearanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameObjectAppearance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shape = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$GameObjectAppearanceImpl(
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as GameObjectShape,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GameObjectAppearanceImpl extends _GameObjectAppearance {
  const _$GameObjectAppearanceImpl(
      {required this.shape, required this.width, required this.height})
      : super._();

  @override
  final GameObjectShape shape;
  @override
  final double width;
  @override
  final double height;

  @override
  String toString() {
    return 'GameObjectAppearance(shape: $shape, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameObjectAppearanceImpl &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shape, width, height);

  /// Create a copy of GameObjectAppearance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameObjectAppearanceImplCopyWith<_$GameObjectAppearanceImpl>
      get copyWith =>
          __$$GameObjectAppearanceImplCopyWithImpl<_$GameObjectAppearanceImpl>(
              this, _$identity);
}

abstract class _GameObjectAppearance extends GameObjectAppearance {
  const factory _GameObjectAppearance(
      {required final GameObjectShape shape,
      required final double width,
      required final double height}) = _$GameObjectAppearanceImpl;
  const _GameObjectAppearance._() : super._();

  @override
  GameObjectShape get shape;
  @override
  double get width;
  @override
  double get height;

  /// Create a copy of GameObjectAppearance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameObjectAppearanceImplCopyWith<_$GameObjectAppearanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
