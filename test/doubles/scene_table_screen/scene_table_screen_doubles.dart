import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_screen.dart';

import '../../framework/test_runner.dart';

class ThenSceneTable {
  final SceneTableScreenDoubles _;
  ThenSceneTable._(this._);

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

mixin SceneTableScreenDoubles on TestRunner {
  ThenSceneTable get thenSceneTable => ThenSceneTable._(this);
}
