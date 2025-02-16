import 'package:game_prototype_simulator/app/domain/useCases/create_new_scene_use_case.dart';
import 'package:game_prototype_simulator/app/presentation/home/home_model.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class HomeViewModel extends ViewModel<HomeModel> {
  final CreateNewSceneUseCase _createNewSceneUseCase;

  HomeViewModel({
    required CreateNewSceneUseCase createNewSceneUseCase,
  }) : _createNewSceneUseCase = createNewSceneUseCase;

  @override
  HomeModel initState() => HomeModel();

  void createNewScene(CreateNewSceneInput newScene) {
    _createNewSceneUseCase.execute(newScene);
  }
}
