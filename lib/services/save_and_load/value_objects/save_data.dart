import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_prototype_simulator/pages/simulate/scene/value_objects/scene.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';

part 'save_data.freezed.dart';
part 'save_data.g.dart';

@freezed
class SaveData with _$SaveData {
  const SaveData._();

  const factory SaveData({
    required List<Scene> scenes,
  }) = _SaveData;

  factory SaveData.empty() {
    return SaveData(
      scenes: [],
    );
  }

  factory SaveData.fromJson(Map<String, Object?> json) =>
      _$SaveDataFromJson(json);

  SaveData addNewScene(String sceneName) {
    return copyWith(
      scenes: scenes.toList()
        ..add(
          Scene(
            id: UuidUtil().get(),
            name: sceneName,
          ),
        ),
    );
  }
}
