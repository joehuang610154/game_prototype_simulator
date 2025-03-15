import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../framework/test_runner.dart';

mixin HomeScreenDoubles on TestRunner {
  @override
  void defaultSetup() {
    super.defaultSetup();
    givenHomeDummies();
  }

  void givenHomeDummies() {}

  Future<void> givenHomeScreen(WidgetTester tester) async {
    await render(tester);
  }

  Future<void> thenScreenTableShould({
    List<({String id, String name})>? contains,
  }) async {
    await tap(find.byIcon(Icons.storage));

    expect(find.byType(SceneTableScreen), findsOne);

    if (contains != null) {
      for (var scene in contains) {
        expect(find.text(scene.id), findsOne);
        expect(find.text(scene.name), findsOne);
      }
    }
  }

  Future<void> whenCreateNewScene([String? sceneId, String? sceneName]) async {
    await tap(find.text(app.tr.newScene));

    expect(find.byType(CreateNewScenePopup), findsOne);

    uuidUtil.add(sceneId ?? 'scene-id');
    await enter(
      CreateNewScenePopup.formFieldKeys.name,
      sceneName ?? 'scene-name',
    );
    await tap(find.text(app.tr.done));
  }
}
