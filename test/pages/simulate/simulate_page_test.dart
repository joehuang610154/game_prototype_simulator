import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_controller.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_page.dart';
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  group("create new scene", () {
    setUpAll(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        const MethodChannel('plugins.flutter.io/path_provider'),
        (MethodCall methodCall) async => '.',
      );
    });

    tearDown(() async {
      await deleteSaveFile();
    });

    testWidgets("auto create new scene when no scene saved", (tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(
          MaterialApp(
            home: SimulatePage(
              SimulateController()..init(),
            ),
          ),
        );
      });
      for (var i = 0; i < 10; i++) {
        await tester.pump(const Duration(milliseconds: 100));
      }

      var data = await readFile(tester);

      expect(
        (data["simulate"] as Map<String, dynamic>).containsKey("new scene"),
        isTrue,
      );
    });
  });
}

Future<dynamic> readFile(WidgetTester tester) async {
  await tester.runAsync(() async {
    var file = await _file();
    expect(file.existsSync(), isTrue);

    var dataString = await file.readAsString();
    print(dataString);
    return jsonDecode(dataString);
  });
}

Future<void> deleteSaveFile() async {
  var file = await _file();
  if (file.existsSync()) {
    file.deleteSync();
  }
}

Future<File> _file() async {
  final dir = await getApplicationDocumentsDirectory();
  return File("${dir.path}${SlService.filename}");
}
