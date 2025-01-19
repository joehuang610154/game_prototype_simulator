import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
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

  Rx<String> get name => obs((model) => model.gameObject?.name ?? "");

  bool get hasFocusedGameObject => state.gameObject != null;

  Rx<Map<String, dynamic>> get properties =>
      obs((model) => model.gameObject?.properties ?? {});

  Rx<bool> get isEditingNewProperty =>
      obs((model) => model.gameObject?.properties.containsKey("") ?? false);

  void rename(String value) {
    setState((model) => model.gameObject?.rename(value));
  }

  void init(GameObject? gameObject) {
    setState((model) => model.gameObject = gameObject);
  }

  void setProperty(String key, String value) {
    setState((model) => model.gameObject!.setProperty(key, value));
  }
}
