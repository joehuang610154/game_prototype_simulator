import 'dart:convert';
import 'dart:io';

import 'package:game_prototype_simulator/constants/envs.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(env: Envs.runtime)
class FileSystem {
  Future<T> read<T>(
    String filename, {
    dynamic initialData,
    T Function(dynamic json)? parse,
  }) async {
    var file = await _file(filename);
    await _createIfNotExists(file, initialData);

    var rawData = await _readData(file);
    return parse != null ? parse(rawData) : rawData;
  }

  Future<dynamic> _readData(File file) async {
    var rawData = jsonDecode(await file.readAsString());
    return rawData;
  }

  Future<void> write(String filename, dynamic data) async {
    File file = await _file(filename);
    await _writeData(file, data);
  }

  Future<File> _file(String filename) async {
    final dir = await getApplicationDocumentsDirectory();
    return File("${dir.path}$filename");
  }

  Future<void> _createIfNotExists(File file, dynamic initialData) async {
    if (!file.existsSync()) {
      await file.create();
      if (initialData != null) {
        await _writeData(file, initialData);
      }
    }
  }

  Future<void> _writeData(File file, dynamic data) async {
    await file.writeAsString(jsonEncode(
      data is List ? data.map((d) => d.toJson()).toList() : data.toJson(),
    ));
  }
}
