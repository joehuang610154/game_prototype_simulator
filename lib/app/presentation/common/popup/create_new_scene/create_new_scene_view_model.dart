import 'package:game_prototype_simulator/app/domain/repositories/get_create_scene_input_repository.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_model.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CreateNewSceneViewModel extends ViewModel<CreateNewSceneModel> {
  @override
  CreateNewSceneModel initState() => CreateNewSceneModel();

  Rx<CreateSceneInput> get result =>
      obs((model) => CreateSceneInput(name: model.name));

  void setName(String name) {
    setState((model) => model.name = name);
  }
}
