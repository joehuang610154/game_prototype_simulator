import 'package:game_prototype_simulator/constants/widget_key.dart';

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

      expect(find.byKey(WidgetKey.gameObject("game_object_1")), findsOne);
    });
  }
}

void main() => SimulatePageTest();
