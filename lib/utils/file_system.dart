import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/services/save_and_load/value_objects/save_data.dart';
import 'package:path_provider/path_provider.dart';

class FileSystem {
  static FileSystem _instance = FileSystem._internal();
  factory FileSystem() => _instance;
  FileSystem._internal();

  @visibleForTesting
  set instance(FileSystem fileSystem) {
    FileSystem();
    _instance = fileSystem;
  }

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

  Future<void> write(String filename, SaveData? data) async {
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
