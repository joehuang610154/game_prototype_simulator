import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CreateNewSceneViewModel extends ViewModel<Scene> {
  @override
  Scene initState() => Scene.empty();

  void setName(String name) {
    setState((model) => model.setName(name));
  }
}
