import 'package:game_prototype_simulator/pages/simulate/scene/value_objects/scene.dart';
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SimulateViewModel {
  final SlService _slService;

  SimulateViewModel({
    required SlService slService,
  }) : _slService = slService;

  Future<Scene> init() async {
    var data = await _slService.load();
    if (data.scenes.isEmpty) {
      data = data.addNewScene("Scene");
      await _slService.save(data);
    }
    return data.scenes.first;
  }
}
