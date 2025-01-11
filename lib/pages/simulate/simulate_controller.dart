import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';

class SimulateController {
  final SlService _slService = SlService();

  Future<void> createNewScene() async {}

  Future<void> init() async {
    var data = await _slService.load();
    if (data["simulate"] == null) {
      data["simulate"] = {
        "new scene": 1,
      };
      await _slService.save(data);
    }
  }
}
