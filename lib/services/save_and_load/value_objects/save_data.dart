import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_prototype_simulator/services/save_and_load/value_objects/simulate_save_data.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';

part 'save_data.freezed.dart';
part 'save_data.g.dart';

@freezed
class SaveData with _$SaveData {
  const SaveData._();

  const factory SaveData({
    required List<SimulateSaveData> simulate,
  }) = _SaveData;

  factory SaveData.empty() {
    return SaveData(
      simulate: [],
    );
  }

  factory SaveData.fromJson(Map<String, Object?> json) =>
      _$SaveDataFromJson(json);

  SaveData addNewScene(String sceneName) {
    return copyWith(
      simulate: simulate.toList()
        ..add(
          SimulateSaveData(
            id: UuidUtil().get(),
            name: sceneName,
          ),
        ),
    );
  }
}
