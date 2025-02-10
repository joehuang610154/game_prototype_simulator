import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_hex.freezed.dart';

@freezed
class ColorHex with _$ColorHex {
  const ColorHex._();

  const factory ColorHex({
    required int value,
  }) = _ColorHex;
}
