import 'package:game_prototype_simulator/app/domain/useCases/create_new_scene_use_case.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_model.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CreateNewSceneViewModel extends ViewModel<CreateNewSceneModel> {
  @override
  CreateNewSceneModel initState() => CreateNewSceneModel();

  Rx<CreateNewSceneInput> get result =>
      obs((model) => CreateNewSceneInput(name: model.name));

  void setName(String name) {
    setState((model) => model.name = name);
  }
}
