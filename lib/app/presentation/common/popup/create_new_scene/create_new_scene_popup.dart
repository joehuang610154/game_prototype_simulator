import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/domain/repositories/get_create_scene_input_repository.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/popup.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_view_model.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_scope.dart';
import 'package:provider/provider.dart';

class CreateNewScenePopup extends StatelessWidget with Popup<CreateSceneInput> {
  static const ({Key name}) formFieldKeys =
      (name: ValueKey("CreateNewScenePopup.fieldName"),);

  CreateNewScenePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelScope<CreateNewSceneViewModel>(
      builder: (context) => _CreateNewScenePopup(),
    );
  }
}

class _CreateNewScenePopup extends StatelessWidget
    with Popup<CreateSceneInput> {
  _CreateNewScenePopup();

  @override
  Widget build(BuildContext context) {
    final CreateNewSceneViewModel viewModel = context.read();

    return AlertDialog(
      title: Text(app.tr.newScene),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              key: CreateNewScenePopup.formFieldKeys.name,
              autofocus: true,
              decoration: InputDecoration(labelText: app.tr.name),
              validator: (value) {
                if (value == null || value.isEmpty) return app.tr.required;

                return null;
              },
              onChanged: viewModel.setName,
            ),
          ],
        ),
      ),
      actions: [
        RxBuilder(
          viewModel.result,
          builder: (context, result) {
            return TextButton(
              onPressed: () => submit(result),
              child: Text(app.tr.done),
            );
          },
        ),
      ],
    );
  }
}
