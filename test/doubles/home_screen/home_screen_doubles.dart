import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../framework/test_runner.dart';

class GivenHome {
  final HomeScreenDoubles _;
  GivenHome._(this._);

  Future<void> render(WidgetTester tester) async {
    await _.render(tester);
  }
}

class WhenHome {
  final HomeScreenDoubles _;
  WhenHome._(this._);

  Future<void> createNewScene([String? sceneId, String? sceneName]) async {
    await _.tap(find.text(app.tr.newScene));

    expect(find.byType(CreateNewScenePopup), findsOne);

    _.uuidUtil.add(sceneId ?? 'scene-id');
    await _.enter(
      CreateNewScenePopup.formFieldKeys.name,
      sceneName ?? 'scene-name',
    );
    await _.tap(find.text(app.tr.done));
  }
}

class ThenHome {
  final HomeScreenDoubles _;
  ThenHome._(this._);

  Future<void> screenTableShould({
    List<({String id, String name})>? contains,
  }) async {
    await _.tap(find.byIcon(Icons.storage));

    expect(find.byType(SceneTableScreen), findsOne);

    if (contains != null) {
      for (var scene in contains) {
        expect(find.text(scene.id), findsOne);
        expect(find.text(scene.name), findsOne);
      }
    }
  }
}

mixin HomeScreenDoubles on TestRunner {
  GivenHome get givenHome => GivenHome._(this);
  WhenHome get whenHome => WhenHome._(this);
  ThenHome get thenHome => ThenHome._(this);
}
