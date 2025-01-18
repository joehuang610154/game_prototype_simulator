import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

import '../../framework/test_runner.dart';

class SimulatePageTest extends TestRunner {
  @override
  void runTests() {
    testWidgets("add a new game object", (tester) async {
      uuidUtil.setGenerateUuids([
        "", // new scene
        "game_object_1",
      ]);

      await render(tester);
      await tap(find.byKey(WidgetKey.addNewGameObject));

      expect(findGameObject("game_object_1"), findsOne);
    });
  }

  Finder findGameObject(String id) =>
      find.byKey(WidgetKey.gameObject(EntityId(id: id)));
}

void main() => SimulatePageTest();
