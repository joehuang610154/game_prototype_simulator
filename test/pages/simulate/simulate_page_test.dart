import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:game_prototype_simulator/pages/simulate/scene/simulate_scene_view.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_page.dart';
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';
import 'package:game_prototype_simulator/services/save_and_load/value_objects/save_data.dart';
import 'package:game_prototype_simulator/services/save_and_load/value_objects/simulate_save_data.dart';

import '../../framework/test_runner.dart';

class SimulatePageTestRunner extends TestRunner {
  @override
  void runTests() {
    group("create new scene", () {
      testWidgets("auto create new scene when no scene saved", (tester) async {
        await tester.runAsync(() async {
          await givenSimulatePage(tester);

          var sceneName = "new scene";
          await shouldSaveScene(sceneName);
          shouldShowScene(tester, sceneName);
        });
      });

      testWidgets("load first scene", (tester) async {
        await tester.runAsync(() async {
          var sceneName = "Battle Field";

          fileSystem.write(
            SlService.filename,
            SaveData(simulate: [
              SimulateSaveData(id: "1", name: sceneName),
            ]),
          );

          await givenSimulatePage(tester);

          shouldShowScene(tester, sceneName);
        });
      });
    });
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

  Future<void> shouldSaveScene(
    String sceneName,
  ) async {
    var data = await fileSystem.read<SaveData>(SlService.filename);
    expect(
      data.simulate.map((s) => s.name),
      contains(sceneName),
    );
  }

  Future<void> givenSimulatePage(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SimulatePage(getIt()),
      ),
    );
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    await tester.pumpAndSettle();
  }
}

void main() => SimulatePageTestRunner();
