import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:game_prototype_simulator/pages/simulate/game_object_properties_panel/game_object_properties_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GameObjectPropertiesViewModel
    extends ViewModel<GameObjectPropertiesModel> {
  @override
  GameObjectPropertiesModel initState() =>
      GameObjectPropertiesModel.initialized();

  Rx<String> get name => obs((model) => model.name);

  void rename(String value) {
    setState((model) => model.name = value);
  }
}
