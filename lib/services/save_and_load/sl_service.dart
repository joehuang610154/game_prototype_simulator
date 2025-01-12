import 'package:game_prototype_simulator/services/save_and_load/value_objects/save_data.dart';
import 'package:game_prototype_simulator/utils/file_system.dart';

class SlService {
  static const filename = "/save.txt";

  static final SlService _instance = SlService._internal();
  factory SlService() => _instance;
  SlService._internal();

  final FileSystem _fileSystem = FileSystem();

  SaveData? _data;

  Future<SaveData> load() async {
    _data ??= await _fileSystem.read(
      filename,
      initialData: SaveData.empty(),
      parse: (json) => SaveData.fromJson(json),
    );
    return _data!;
  }

  Future<void> save(SaveData data) async {
    _data = data;

    await _fileSystem.write(filename, _data);
  }
}
