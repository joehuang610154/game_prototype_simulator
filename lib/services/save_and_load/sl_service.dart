import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class SlService {
  static const filename = "/save.txt";

  static final SlService _instance = SlService._internal();
  factory SlService() => _instance;
  SlService._internal();

  Map<String, dynamic>? _data;

  Future<Map<String, dynamic>> load() async {
    if (_data == null) {
      File file = await _file();
      _data = jsonDecode(await file.readAsString());
    }
    return _data!;
  }

  Future<void> save(Map<String, dynamic> data) async {
    _data = data;

    File file = await _file();
    await file.writeAsString(jsonEncode(_data));
  }

  Future<File> _file() async {
    final dir = await getApplicationDocumentsDirectory();
    var file = File("${dir.path}$filename");
    if (!file.existsSync()) {
      await file.create();
      await file.writeAsString("{}");
    }
    return file;
  }
}
