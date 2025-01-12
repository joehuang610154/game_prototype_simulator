import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:game_prototype_simulator/pages/simulate/scene/simulate_scene_view.dart';
import 'package:game_prototype_simulator/pages/simulate/scene/value_objects/scene.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_page.dart';
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart';
import 'package:game_prototype_simulator/services/save_and_load/value_objects/save_data.dart';

import '../../framework/test_runner.dart';

class SimulatePageTestRunner extends TestRunner {
  @override
  void runTests() {
    group("create new scene", () {
      testWidgets("auto create new scene when no scene saved", (tester) async {
        await tester.runAsync(() async {
          var sceneId = "123456";
          uuidUtil.setGenerateUuids([sceneId]);

          await givenSimulatePage(tester);

          var sceneName = "new scene";
          await shouldSaveScene(Scene(id: sceneId, name: sceneName));
          shouldShowScene(tester, sceneId);
        });
      });

      testWidgets("load first scene", (tester) async {
        await tester.runAsync(() async {
          var sceneId = "111111";
          fileSystem.write(
            SlService.filename,
            SaveData(scenes: [
              Scene(id: sceneId, name: "Battle Field"),
            ]),
          );

          await givenSimulatePage(tester);

          shouldShowScene(tester, sceneId);
        });
      });
    });
  }

  void shouldShowScene(WidgetTester tester, String sceneId) {
    expect(
      tester
          .widget<SimulateSceneView>(find.byType(SimulateSceneView))
          .controller
          .sceneId,
      sceneId,
    );
  }

  Future<void> shouldSaveScene(Scene scene) async {
    var data = await fileSystem.read<SaveData>(SlService.filename);
    expect(data.scenes, contains(scene));
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
