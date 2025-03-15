import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../../doubles/home_screen/home_screen_doubles.dart';
import '../../../doubles/scene_table_screen/scene_table_screen_doubles.dart';
import '../../../framework/test_runner.dart';

class HomeScreenTestRunner extends TestRunner
    with HomeScreenDoubles, SceneTableScreenDoubles {
  HomeScreenTestRunner();

  @override
  void runTests() {
    group('create new scene', () {
      testWidgets('create new scene - all ok', (tester) async {
        final sceneId = '372ac010755349209fd64f05f0d2e414';
        final sceneName = 'Test Scene';

        await givenHome.render(tester);
        await whenHome.createNewScene(sceneId, sceneName);

        await thenSceneTable.screenTableShould(
          contains: [(id: sceneId, name: sceneName)],
        );
      });

      testWidgets('create new scene - name is required', (tester) async {
        await render(tester);
        await tap(find.text(app.tr.newScene));

        expect(find.byType(CreateNewScenePopup), findsOne);

        await tap(find.text(app.tr.done));

        expect(find.text(app.tr.required), findsOne);
      });
    });

    group("load scene", () {
      testWidgets("show scenes => select a scene => open scene screen",
          (tester) async {
        await render(tester);
      });
    });
  }
}

void main() => HomeScreenTestRunner();
