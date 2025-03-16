import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../../../doubles/home_screen_doubles.dart';
import '../../../doubles/scene_table_screen_doubles.dart';
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

        await thenSceneTable.shouldContains([
          (id: sceneId, name: sceneName),
        ]);
      });

      testWidgets('create new scene - name is required', (tester) async {
        await givenHome.render(tester);
        await whenHome.openCreateNewScenePopup();

        await whenHome.confirmCreateNewScene();

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
