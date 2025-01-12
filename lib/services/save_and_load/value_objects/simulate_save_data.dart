import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulate_save_data.freezed.dart';
part 'simulate_save_data.g.dart';

@freezed
class SimulateSaveData with _$SimulateSaveData {
  const SimulateSaveData._();

  const factory SimulateSaveData({
    required String id,
    required String name,
  }) = _SimulateSaveData;

  factory SimulateSaveData.fromJson(Map<String, Object?> json) =>
      _$SimulateSaveDataFromJson(json);
}
