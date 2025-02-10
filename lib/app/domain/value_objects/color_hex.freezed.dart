// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_hex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorHex {
  int get value => throw _privateConstructorUsedError;

  /// Create a copy of ColorHex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorHexCopyWith<ColorHex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorHexCopyWith<$Res> {
  factory $ColorHexCopyWith(ColorHex value, $Res Function(ColorHex) then) =
      _$ColorHexCopyWithImpl<$Res, ColorHex>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$ColorHexCopyWithImpl<$Res, $Val extends ColorHex>
    implements $ColorHexCopyWith<$Res> {
  _$ColorHexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorHex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorHexImplCopyWith<$Res>
    implements $ColorHexCopyWith<$Res> {
  factory _$$ColorHexImplCopyWith(
          _$ColorHexImpl value, $Res Function(_$ColorHexImpl) then) =
      __$$ColorHexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$ColorHexImplCopyWithImpl<$Res>
    extends _$ColorHexCopyWithImpl<$Res, _$ColorHexImpl>
    implements _$$ColorHexImplCopyWith<$Res> {
  __$$ColorHexImplCopyWithImpl(
      _$ColorHexImpl _value, $Res Function(_$ColorHexImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorHex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ColorHexImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ColorHexImpl extends _ColorHex {
  const _$ColorHexImpl({required this.value}) : super._();

  @override
  final int value;

  @override
  String toString() {
    return 'ColorHex(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorHexImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ColorHex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorHexImplCopyWith<_$ColorHexImpl> get copyWith =>
      __$$ColorHexImplCopyWithImpl<_$ColorHexImpl>(this, _$identity);
}

abstract class _ColorHex extends ColorHex {
  const factory _ColorHex({required final int value}) = _$ColorHexImpl;
  const _ColorHex._() : super._();

  @override
  int get value;

  /// Create a copy of ColorHex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorHexImplCopyWith<_$ColorHexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
