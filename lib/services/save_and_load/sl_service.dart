import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class SlService {
  static final SlService _instance = SlService._internal();
  factory SlService() => _instance;
  SlService._internal();

  dynamic _data;

  Future<dynamic> load() async {
    if (_data == null) {
      File file = await _file();
      _data = jsonDecode(await file.readAsString());
    }
    return _data;
  }

  Future<void> save(dynamic data) async {
    _data = data;

    File file = await _file();
    await file.writeAsString(jsonEncode(_data));
  }

  Future<File> _file() async {
    final dir = await getApplicationDocumentsDirectory();
    return File("${dir.path}/save.txt");
  }
}
