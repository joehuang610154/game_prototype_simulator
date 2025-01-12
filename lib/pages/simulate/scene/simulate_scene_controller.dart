import 'package:injectable/injectable.dart';

@Injectable()
class SimulateSceneController {
  final String _sceneName;

  SimulateSceneController({
    @factoryParam required String sceneName,
  }) : _sceneName = sceneName;

  String get sceneName => _sceneName;
}
