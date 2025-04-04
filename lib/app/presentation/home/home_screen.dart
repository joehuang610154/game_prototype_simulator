import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/app_scaffold.dart';
import 'package:game_prototype_simulator/app/presentation/common/popup/load_scene_popup/load_scene_popup.dart';
import 'package:game_prototype_simulator/app/presentation/home/home_view_model.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/framework/view_model_scope.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelScope<HomeViewModel>(
      builder: (context) => _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = context.read();

    return AppScaffold(
      title: Text(app.tr.gamePrototypeSimulator),
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
            onTap: () async {
              await LoadScenePopup().show();
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard_customize),
            title: Text(app.tr.newScene),
            onTap: () async {
              final sceneId = await viewModel.createNewScene();
              if (sceneId == null) return;

              app.push(EditorRoute(sceneId: sceneId.toString()));
            },
          ),
        ],
      ),
    );
  }
}
