import 'dart:convert';
import 'dart:io';

import 'package:game_prototype_simulator/services/save_and_load/value_objects/save_data.dart';
import 'package:path_provider/path_provider.dart';

class SlService {
  static const filename = "/save.txt";

  static final SlService _instance = SlService._internal();
  factory SlService() => _instance;
  SlService._internal();

  SaveData? _data;

  Future<SaveData> load() async {
    if (_data == null) {
      File file = await _file();
      var rawData = jsonDecode(await file.readAsString());
      _data = SaveData.fromJson(rawData);
    }
    return _data!;
  }

  Future<void> save(SaveData data) async {
    _data = data;

    File file = await _file();
    await file.writeAsString(jsonEncode(_data!.toJson()));
  }

  Future<File> _file() async {
    final dir = await getApplicationDocumentsDirectory();
    var file = File("${dir.path}$filename");
    if (!file.existsSync()) {
      await file.create();
      await file.writeAsString(jsonEncode(
        SaveData.empty().toJson(),
      ));
    }
    return file;
  }
}
