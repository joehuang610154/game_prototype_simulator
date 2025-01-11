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
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        const MethodChannel('plugins.flutter.io/path_provider'),
        (MethodCall methodCall) async => '.',
      );
    });

    testWidgets("auto create new scene when no scene saved", (tester) async {
      await tester.runAsync(() async {
        await givenSimulatePage(tester);

        await savedSimulateDataShould(isTrue);
        expect(
          tester
              .widget<SimulateSceneView>(find.byType(SimulateSceneView))
              .controller
              .sceneName,
          "new scene",
        );

        await deleteSaveFile();
      });
    });
  });
}

Future<void> savedSimulateDataShould(Matcher matcher) async {
  var data = await readFile();
  expect(
    (data["simulate"] as Map<String, dynamic>).containsKey("new scene"),
    matcher,
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
