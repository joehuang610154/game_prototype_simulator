import 'package:game_prototype_simulator/app/presentation/scene/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/app/presentation/table/display_as_table_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../../framework/test_runner.dart';

class HomeScreenTestRunner extends TestRunner {
  HomeScreenTestRunner();

  @override
  void runTests() {
    group('create new scene', () {
      testWidgets('create new scene - all ok', (tester) async {
        await render(tester);
        await tap(find.text(app.tr.newScene));

        expect(find.byType(CreateNewScenePopup), findsOne);

        await enter(CreateNewScenePopup.formFieldKeys.name, "Test Scene");
        await tap(find.text(app.tr.done));

        expect(find.byType(DisplayAsTableScreen), findsOne);
      });

      testWidgets('create new scene - name is required', (tester) async {
        await render(tester);
        await tap(find.text(app.tr.newScene));

        expect(find.byType(CreateNewScenePopup), findsOne);

        await tap(find.text(app.tr.done));

        expect(find.text(app.tr.required), findsOne);
      });
    });
  }
}

void main() => HomeScreenTestRunner();
