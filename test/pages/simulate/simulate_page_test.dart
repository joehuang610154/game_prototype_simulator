import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

import '../../framework/test_runner.dart';

class SimulatePageTest extends TestRunner {
  @override
  void runTests() {
    var gameObjectId = "game_object";

    testWidgets("add a new game object", (tester) async {
      await givenSimulatePageWithOneGameObject(tester, gameObjectId);

      expect(findGameObject(gameObjectId), findsOne);
      shouldNotFocusOnGameObject(findGameObject(gameObjectId));
    });

    testWidgets("focus on game object", (tester) async {
      await givenSimulatePageWithOneGameObject(tester, gameObjectId);

      await tap(findGameObject(gameObjectId));

      shouldFocusOnGameObject(findGameObject(gameObjectId));
    });

    group("game object operation", () {
      var gameObjectId = "game_object";

      testWidgets("set name", (tester) async {
        await givenSimulatePageWithOneGameObject(tester, gameObjectId);
      });
    });
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
