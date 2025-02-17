import 'package:game_prototype_simulator/app/domain/repositories/get_create_scene_input_repository.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetCreateSceneInputRepository)
class CreateNewSceneRepository implements GetCreateSceneInputRepository {
  @override
  Future<CreateSceneInput?> get() async {
    return await CreateNewScenePopup().show();
  }
}
