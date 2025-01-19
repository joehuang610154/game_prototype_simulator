// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_object_view_style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameObjectViewStyle {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  BorderRadius? get borderRadius => throw _privateConstructorUsedError;
  BoxShape get shape => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  /// Create a copy of GameObjectViewStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameObjectViewStyleCopyWith<GameObjectViewStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameObjectViewStyleCopyWith<$Res> {
  factory $GameObjectViewStyleCopyWith(
          GameObjectViewStyle value, $Res Function(GameObjectViewStyle) then) =
      _$GameObjectViewStyleCopyWithImpl<$Res, GameObjectViewStyle>;
  @useResult
  $Res call(
      {double width,
      double height,
      BorderRadius? borderRadius,
      BoxShape shape,
      Color color});
}

/// @nodoc
class _$GameObjectViewStyleCopyWithImpl<$Res, $Val extends GameObjectViewStyle>
    implements $GameObjectViewStyleCopyWith<$Res> {
  _$GameObjectViewStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameObjectViewStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? borderRadius = freezed,
    Object? shape = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius?,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameObjectViewStyleImplCopyWith<$Res>
    implements $GameObjectViewStyleCopyWith<$Res> {
  factory _$$GameObjectViewStyleImplCopyWith(_$GameObjectViewStyleImpl value,
          $Res Function(_$GameObjectViewStyleImpl) then) =
      __$$GameObjectViewStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double width,
      double height,
      BorderRadius? borderRadius,
      BoxShape shape,
      Color color});
}

/// @nodoc
class __$$GameObjectViewStyleImplCopyWithImpl<$Res>
    extends _$GameObjectViewStyleCopyWithImpl<$Res, _$GameObjectViewStyleImpl>
    implements _$$GameObjectViewStyleImplCopyWith<$Res> {
  __$$GameObjectViewStyleImplCopyWithImpl(_$GameObjectViewStyleImpl _value,
      $Res Function(_$GameObjectViewStyleImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameObjectViewStyle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? borderRadius = freezed,
    Object? shape = null,
    Object? color = null,
  }) {
    return _then(_$GameObjectViewStyleImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius?,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GameObjectViewStyleImpl implements _GameObjectViewStyle {
  const _$GameObjectViewStyleImpl(
      {required this.width,
      required this.height,
      required this.borderRadius,
      required this.shape,
      required this.color});

  @override
  final double width;
  @override
  final double height;
  @override
  final BorderRadius? borderRadius;
  @override
  final BoxShape shape;
  @override
  final Color color;

  @override
  String toString() {
    return 'GameObjectViewStyle._(width: $width, height: $height, borderRadius: $borderRadius, shape: $shape, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameObjectViewStyleImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, width, height, borderRadius, shape, color);

  /// Create a copy of GameObjectViewStyle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameObjectViewStyleImplCopyWith<_$GameObjectViewStyleImpl> get copyWith =>
      __$$GameObjectViewStyleImplCopyWithImpl<_$GameObjectViewStyleImpl>(
          this, _$identity);
}

abstract class _GameObjectViewStyle implements GameObjectViewStyle {
  const factory _GameObjectViewStyle(
      {required final double width,
      required final double height,
      required final BorderRadius? borderRadius,
      required final BoxShape shape,
      required final Color color}) = _$GameObjectViewStyleImpl;

  @override
  double get width;
  @override
  double get height;
  @override
  BorderRadius? get borderRadius;
  @override
  BoxShape get shape;
  @override
  Color get color;

  /// Create a copy of GameObjectViewStyle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameObjectViewStyleImplCopyWith<_$GameObjectViewStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
