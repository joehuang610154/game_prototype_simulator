import 'package:injectable/injectable.dart';

@Injectable()
class SimulateSceneController {
  final String _sceneId;

  SimulateSceneController({
    @factoryParam required String sceneId,
  }) : _sceneId = sceneId;

  String get sceneId => _sceneId;
}
