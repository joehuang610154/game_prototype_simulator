import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/popup.dart';
import 'package:game_prototype_simulator/framework/app_context.dart';

class CreateNewScenePopup extends StatelessWidget with Popup {
  static const ({Key name}) formFieldKeys =
      (name: ValueKey("CreateNewScenePopup.fieldName"),);

  final _formKey = GlobalKey<FormState>();

  CreateNewScenePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(app.tr.newScene),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              key: CreateNewScenePopup.formFieldKeys.name,
              autofocus: true,
              decoration: InputDecoration(labelText: app.tr.name),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(app.tr.done),
        ),
      ],
    );
  }
}
