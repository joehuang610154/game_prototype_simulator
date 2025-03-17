import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/app_scaffold.dart';
import 'package:game_prototype_simulator/app/presentation/editor/editor_view_model.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_scope.dart';
import 'package:provider/provider.dart';

class EditorScreen extends StatelessWidget {
  static const widgetKeys = (sceneName: ValueKey('editor_screen_scene_name'),);

  final String sceneId;
  const EditorScreen({
    super.key,
    required this.sceneId,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelScope<EditorViewModel>(
      onInit: (viewModel) => viewModel.init(sceneId),
      builder: (context) => _EditorScreen(),
    );
  }
}

class _EditorScreen extends StatelessWidget {
  const _EditorScreen();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<EditorViewModel>();

    return AppScaffold(
      title: RxBuilder(
        viewModel.sceneName,
        builder: (context, sceneName) {
          return Text(
            key: EditorScreen.widgetKeys.sceneName,
            sceneName,
          );
        },
      ),
      body: Container(),
    );
  }
}
