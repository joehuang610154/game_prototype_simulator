import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

import '../../framework/test_runner.dart';

class SimulatePageTest extends TestRunner {
  @override
  void runTests() {
    testWidgets("add a new game object", (tester) async {
      var gameObjectId = "game_object";
      uuidUtil.setGenerateUuids(["new_scene", gameObjectId]);

      await render(tester);
      await tap(find.byKey(WidgetKey.addNewGameObject));

      expect(findGameObject(gameObjectId), findsOne);
    });

    group("game object operation", () {
      var gameObjectId = "game_object";

      testWidgets("rename", (tester) async {
        await givenSimulatePageWithOneGameObject(tester, gameObjectId);
      });
    });
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
