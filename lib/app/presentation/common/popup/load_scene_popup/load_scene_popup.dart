import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/load_scene_popup/load_scene_view_model.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/popup.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_scope.dart';
import 'package:provider/provider.dart';

class LoadScenePopup extends StatelessWidget with Popup<EntityId> {
  LoadScenePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelScope<LoadSceneViewModel>(
      builder: (context) => _LoadScenePopup(),
    );
  }
}

class _LoadScenePopup extends StatelessWidget with Popup<EntityId> {
  _LoadScenePopup();

  @override
  Widget build(BuildContext context) {
    final LoadSceneViewModel viewModel = context.read();
    return Form(
      key: formKey,
      child: RxBuilder(
        viewModel.scenes,
        builder: (context, scenes) {
          return AlertDialog(
            title: Text(app.tr.loadScene),
            content: Container(
              width: 375,
              height: 575,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListView.builder(
                itemCount: scenes.length,
                itemBuilder: (context, index) {
                  final scene = scenes[index];
                  return RxBuilder(
                    viewModel.selectedScene,
                    builder: (context, selectedScene) {
                      return ListTile(
                        title: Text(scene.name),
                        onTap: () {
                          viewModel.selectScene(scene.id);
                        },
                        selected: selectedScene.id == scene.id,
                      );
                    },
                  );
                },
              ),
            ),
            actions: [
              RxBuilder(
                viewModel.selectedScene,
                builder: (context, selectedScene) {
                  return TextButton(
                    onPressed: () {
                      if (selectedScene.id.isEmpty) return;
                      submit(selectedScene.id);
                    },
                    child: Text(app.tr.done),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
