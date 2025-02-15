import 'package:game_prototype_simulator/app/presentation/scene/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/framework/app_context.dart';

import '../../../framework/test_runner.dart';

class HomeScreenTestRunner extends TestRunner {
  HomeScreenTestRunner();

  @override
  void runTests() {
    testWidgets('create new scene', (tester) async {
      await render(tester);
      await tap(find.text(app.tr.newScene));

      expect(find.byType(CreateNewScenePopup), findsOneWidget);

      await enter(CreateNewScenePopup.formFieldKeys.name, "Test Scene");
      await tap(find.text(app.tr.done));
    });
  }
}

void main() => HomeScreenTestRunner();
