import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';

class SimulateController {
  final SlService _slService = SlService();

  Future<void> createNewScene() async {}

  Future<String> init() async {
    var data = await _slService.load();
    if (data.simulate.isEmpty) {
      data = data.addNewScene("new scene");
      await _slService.save(data);
    }
    return data.simulate.first.name;
  }
}
