import 'package:game_prototype_simulator/pages/simulate/scene/value_objects/scene.dart';
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SimulateController {
  final SlService _slService;

  SimulateController({
    required SlService slService,
  }) : _slService = slService;

  Future<void> createNewScene() async {}

  Future<Scene> init() async {
    var data = await _slService.load();
    if (data.simulate.isEmpty) {
      data = data.addNewScene("new scene");
      await _slService.save(data);
    }
    return data.simulate.first;
  }
}
