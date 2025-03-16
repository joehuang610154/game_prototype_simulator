import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_screen.dart';

import '../framework/test_runner.dart';

class WhenSceneTable {
  final SceneTableScreenDoubles _;
  WhenSceneTable._(this._);

  Future<void> open() async {
    await _.tap(find.byIcon(Icons.storage));
  }

  void close() {
    _.tap(find.byType(BackButton));
  }
}

class ThenSceneTable {
  final SceneTableScreenDoubles _;
  ThenSceneTable._(this._);

  Future<void> shouldContains(
    List<({String id, String name})> contains,
  ) async {
    await _.whenSceneTable.open();

    expect(find.byType(SceneTableScreen), findsOne);

    for (var scene in contains) {
      expect(find.text(scene.id), findsOne);
      expect(find.text(scene.name), findsOne);
    }

    _.whenSceneTable.close();
  }
}

mixin SceneTableScreenDoubles on TestRunner {
  WhenSceneTable get whenSceneTable => WhenSceneTable._(this);
  ThenSceneTable get thenSceneTable => ThenSceneTable._(this);
}
