import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

import '../../framework/test_runner.dart';

class SimulatePageTest extends TestRunner {
  @override
  void runTests() {
    var gameObjectId1 = "game_object_1";
    var gameObjectId2 = "game_object_2";

    testWidgets("add a new game object", (tester) async {
      uuidUtil.setGenerateUuids([
        "new_scene",
        gameObjectId1,
        gameObjectId2,
      ]);

      await render(tester);

      await addNewGameObject();
      expect(findGameObject(gameObjectId1), findsOne);
      shouldNotFocusOnGameObject(findGameObject(gameObjectId1));

      await addNewGameObject();
      expect(findGameObject(gameObjectId2), findsOne);
      shouldNotFocusOnGameObject(findGameObject(gameObjectId2));
    });

    testWidgets("focus on game object", (tester) async {
      uuidUtil.setGenerateUuids([
        "new_scene",
        gameObjectId1,
        gameObjectId2,
      ]);

      await render(tester);
      await addNewGameObject();
      await addNewGameObject();

      await tap(findGameObject(gameObjectId1));
      shouldFocusOnGameObject(findGameObject(gameObjectId1));
      shouldNotFocusOnGameObject(findGameObject(gameObjectId2));

      await tap(findGameObject(gameObjectId2));
      shouldNotFocusOnGameObject(findGameObject(gameObjectId1));
      shouldFocusOnGameObject(findGameObject(gameObjectId2));
    });

    group("game object operation", () {
      var gameObjectId = "game_object";

      testWidgets("set name", (tester) async {
        await givenSimulatePageWithOneGameObject(tester, gameObjectId);
      });
    });
  }

  Future<void> addNewGameObject() async {
    await tap(find.byKey(WidgetKey.addNewGameObject));
  }

  void shouldNotFocusOnGameObject(Finder gameObject) {
    var finder = find.descendant(
      of: gameObject,
      matching: find.byType(Container),
    );
    var border = (tester.widget<Container>(finder).decoration as BoxDecoration)
        .border as Border;
    expect((
      border.bottom,
      border.top,
      border.left,
      border.right,
    ), (
      BorderSide.none,
      BorderSide.none,
      BorderSide.none,
      BorderSide.none,
    ));
  }

  void shouldFocusOnGameObject(Finder gameObject) {
    var finder = find.descendant(
      of: gameObject,
      matching: find.byType(Container),
    );
    var border = (tester.widget<Container>(finder).decoration as BoxDecoration)
        .border as Border;
    expect((
      border.bottom.color,
      border.top.color,
      border.left.color,
      border.right.color,
    ), (
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
    ));
  }

  Future<void> givenSimulatePageWithOneGameObject(
    WidgetTester tester,
    String gameObjectId,
  ) async {
    uuidUtil.setGenerateUuids([
      "new_scene",
      gameObjectId,
    ]);

    await render(tester);
    await tap(find.byKey(WidgetKey.addNewGameObject));
  }

  Finder findGameObject(String id) =>
      find.byKey(WidgetKey.gameObject(EntityId(id: id)));
}

void main() => SimulatePageTest();
