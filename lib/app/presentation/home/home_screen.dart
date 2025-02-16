import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/home/home_view_model.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_popup.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';
import 'package:game_prototype_simulator/utils/widget_extension.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<HomeViewModel>(
      builder: (context) => _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = context.read();

    return Scaffold(
      appBar: AppBar(
        title: Text(app.tr.gamePrototypeSimulator),
        elevation: 4,
        actions: [
          IconButton(
            icon: Icon(Icons.storage),
            onPressed: () => app.push(DisplayAsTableRoute()),
          ).paddingOnly(right: 16),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.keyboard_double_arrow_right),
            title: Text(app.tr.continueFromLast),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event_repeat),
            title: Text(app.tr.loadScene),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.dashboard_customize),
            title: Text(app.tr.newScene),
            onTap: () async {
              final newScene = await CreateNewScenePopup().show();
              if (newScene == null) return;

              viewModel.createNewScene(newScene);
            },
          ),
        ],
      ),
    );
  }
}
