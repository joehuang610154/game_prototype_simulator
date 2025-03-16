import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

import '../framework/test_runner.dart';

class GivenHome {
  final HomeScreenDoubles _;
  GivenHome._(this._);

  Future<void> render(WidgetTester tester) async {
    await _.render(tester);
  }
}

class WhenHome {
  final HomeScreenDoubles _;
  WhenHome._(this._);

  Future<void> createNewScene([String? sceneId, String? sceneName]) async {
    await openCreateNewScenePopup();

    expect(find.byType(CreateNewScenePopup), findsOne);

    _.uuidUtil.add(sceneId ?? 'scene-id');
    await enterCreateNewSceneForm(
      name: sceneName ?? 'scene-name',
    );
    await confirmCreateNewScene();
  }

  Future<void> enterCreateNewSceneForm({
    String? name,
  }) async {
    if (name != null) {
      await _.enter(CreateNewScenePopup.formFieldKeys.name, name);
    }
  }

  Future<void> openCreateNewScenePopup() async {
    await _.tap(find.text(app.tr.newScene));
  }

  Future<void> confirmCreateNewScene() async {
    await _.tap(find.text(app.tr.done));
  }
}

mixin HomeScreenDoubles on TestRunner {
  GivenHome get givenHome => GivenHome._(this);
  WhenHome get whenHome => WhenHome._(this);
}
