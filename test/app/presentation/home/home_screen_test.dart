import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../../framework/test_runner.dart';

class HomeScreenTestRunner extends TestRunner {
  HomeScreenTestRunner();

  @override
  void runTests() {
    group('create new scene', () {
      testWidgets('create new scene - all ok', (tester) async {
        final sceneId = '372ac010755349209fd64f05f0d2e414';
        final sceneName = 'Test Scene';

        await render(tester);
        await tap(find.text(app.tr.newScene));

        expect(find.byType(CreateNewScenePopup), findsOne);

        uuidUtil.add(sceneId);
        await enter(CreateNewScenePopup.formFieldKeys.name, sceneName);
        await tap(find.text(app.tr.done));

        await tap(find.byIcon(Icons.storage));
        expect(find.byType(SceneTableScreen), findsOne);
        expect(find.text(sceneId), findsOne);
        expect(find.text(sceneName), findsOne);
      });

      testWidgets('create new scene - name is required', (tester) async {
        await render(tester);
        await tap(find.text(app.tr.newScene));

        expect(find.byType(CreateNewScenePopup), findsOne);

        await tap(find.text(app.tr.done));

        expect(find.text(app.tr.required), findsOne);
      });
    });
  }
}

void main() => HomeScreenTestRunner();
