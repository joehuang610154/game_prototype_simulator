import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/utils/widget_extension.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(app.tr.gamePrototypeSimulator),
        elevation: 4,
        actions: [
          IconButton(
            icon: Icon(Icons.storage),
            onPressed: () => app.push(SceneTableRoute()),
          ).paddingOnly(right: 16),
        ],
      ),
      body: body,
    );
  }
}
