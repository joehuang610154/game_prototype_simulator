import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/editor/editor_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../../doubles/editor_screen_doubles.dart';
import '../../../doubles/home_screen_doubles.dart';
import '../../../doubles/scene_table_screen_doubles.dart';
import '../../../framework/test_runner.dart';

class HomeScreenTestRunner extends TestRunner
    with HomeScreenDoubles, SceneTableScreenDoubles, EditorScreenDoubles {
  HomeScreenTestRunner();

  @override
  void runTests() {
    group('create new scene', () {
      testWidgets('create new scene - all ok', (tester) async {
        final sceneId = '372ac010755349209fd64f05f0d2e414';
        final sceneName = 'Test Scene';

        await givenHome.render(tester);
        await whenHome.createNewScene(sceneId, sceneName);

        expect(find.byType(EditorScreen), findsOne);
        thenEditor.shouldBe(sceneId, sceneName);

        await thenSceneTable.shouldContains([
          (id: sceneId, name: sceneName),
        ]);
      });

      testWidgets('create new scene - name is required', (tester) async {
        await givenHome.render(tester);
        await whenHome.openCreateNewScenePopup();

        await whenHome.done();

        expect(find.text(app.tr.required), findsOne);
      });
    });

    group("load scene", () {
      testWidgets("show scenes => select a scene => open scene screen",
          (tester) async {
        final sceneId1 = '372ac010755349209fd64f05f0d2e414';
        final sceneName1 = 'Test Scene 1';
        final sceneId2 = 'c915b70ecfa84a2f95264302bae31adf';
        final sceneName2 = 'Test Scene 2';

        await givenHome.render(tester);
        await whenHome.createNewScene(sceneId1, sceneName1);
        await back();
        await whenHome.createNewScene(sceneId2, sceneName2);
        await back();

        await whenHome.openLoadScenePopup();
        expect(find.text(sceneName1), findsOne);
        expect(find.text(sceneName2), findsOne);

        await tap(find.text(sceneName2));
        await whenHome.done();

        expect(find.byType(EditorScreen), findsOne);
        thenEditor.shouldBe(sceneId2, sceneName2);
      });
    });
  }
}

void main() => HomeScreenTestRunner();
