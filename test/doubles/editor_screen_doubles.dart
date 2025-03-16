import 'package:game_prototype_simulator/app/presentation/editor/editor_screen.dart';

import '../framework/test_runner.dart';
import '../matchers/text/is_text.dart';

class ThenEditor {
  final EditorScreenDoubles _;
  ThenEditor._(this._);

  void shouldBe(String sceneId, String sceneName) {
    expect(
      _.tester.widget<EditorScreen>(find.byType(EditorScreen)).sceneId,
      sceneId,
    );
    expect(find.byKey(EditorScreen.widgetKeys.sceneName), isText(sceneName));
  }
}

mixin EditorScreenDoubles on TestDependencies {
  ThenEditor get thenEditor => ThenEditor._(this);
}
