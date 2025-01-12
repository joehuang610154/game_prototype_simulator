import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_prototype_simulator/pages/simulate/scene/simulate_scene_view.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_controller.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_page.dart';
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  group("create new scene", () {
    setUpAll(() {
      givenPwd();
    });

    testWidgets("auto create new scene when no scene saved", (tester) async {
      await tester.runAsync(() async {
        await givenSimulatePage(tester);

        var sceneName = "new scene";
        await shouldSaveScene(sceneName);
        shouldShowScene(tester, sceneName);

        await deleteSaveFile();
      });
    });

    testWidgets("load first scene", (tester) async {
      await tester.runAsync(() async {
        var sceneName = "Battle Field";
        var file = await _file();
        await file.create();
        await file.writeAsString(jsonEncode({
          "simulate": [
            {
              "id": "1",
              "name": sceneName,
            }
          ],
        }));

        await givenSimulatePage(tester);

        shouldShowScene(tester, sceneName);

        await deleteSaveFile();
      });
    });
  });
}

void givenPwd() {
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
    const MethodChannel('plugins.flutter.io/path_provider'),
    (MethodCall methodCall) async => '.',
  );
}

void shouldShowScene(WidgetTester tester, String sceneName) {
  expect(
    tester
        .widget<SimulateSceneView>(find.byType(SimulateSceneView))
        .controller
        .sceneName,
    sceneName,
  );
}

Future<void> shouldSaveScene(String sceneName) async {
  var data = await readFile();
  expect(
    (data["simulate"] as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .where((s) => s["name"] == sceneName),
    isNotEmpty,
  );
}

Future<void> givenSimulatePage(WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      home: SimulatePage(
        SimulateController(),
      ),
    ),
  );
  for (var i = 0; i < 10; i++) {
    await Future.delayed(const Duration(milliseconds: 100));
  }
  await tester.pumpAndSettle();
}

Future<dynamic> readFile() async {
  var file = await _file();
  expect(file.existsSync(), isTrue);

  var dataString = await file.readAsString();
  return jsonDecode(dataString);
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
