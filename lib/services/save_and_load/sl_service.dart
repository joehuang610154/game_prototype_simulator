import 'package:game_prototype_simulator/services/save_and_load/value_objects/save_data.dart';
import 'package:game_prototype_simulator/utils/file_system.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SlService {
  static const filename = "/save.txt";

  final FileSystem _fileSystem;

  SaveData? _data;

  SlService({
    required FileSystem fileSystem,
  }) : _fileSystem = fileSystem;

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
