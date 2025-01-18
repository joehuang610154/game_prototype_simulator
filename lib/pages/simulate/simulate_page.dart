import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';
import 'package:game_prototype_simulator/pages/simulate/game_object/game_object_view.dart';
import 'package:game_prototype_simulator/pages/simulate/game_object_properties_panel/game_object_properties_panel.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_view_model.dart';
import 'package:provider/provider.dart';

class SimulatePage extends StatelessWidget {
  const SimulatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SimulateViewModel>(
      builder: (context) => SimulateView(),
    );
  }
}

class SimulateView extends StatefulWidget {
  const SimulateView({super.key});

  @override
  State<SimulateView> createState() => _SimulateViewState();
}

class _SimulateViewState extends State<SimulateView> {
  SimulateViewModel get viewModel => context.read();

  @override
  void initState() {
    viewModel.createNewScene();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Simulate"),
            Gaps.w8,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  StreamBuilder(
                    stream: viewModel.sceneName,
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.data ?? "",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade900,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.grey[400],
              child: Column(
                children: [
                  IconButton(
                    key: WidgetKey.addNewGameObject,
                    onPressed: () {
                      viewModel.addNewGameObject();
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RxBuilder(
                viewModel.gameObjects,
                builder: (context, gameObjects) {
                  return Row(
                    children: gameObjects.map((gameObject) {
                      return RxBuilder(
                        viewModel.isFocused(gameObject.id),
                        builder: (context, isFocused) {
                          return GameObjectView(
                            gameObject.id,
                            key: WidgetKey.gameObject(gameObject.id),
                            isFocused: isFocused,
                            onTap: () =>
                                viewModel.focusOnGameObject(gameObject.id),
                          );
                        },
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            Container(
              width: 300,
              padding: EdgeInsets.only(
                left: 32,
                right: 12,
                top: 24,
                bottom: 48,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0, 0.1, 1],
                  colors: [
                    Colors.black.withAlpha(180),
                    Colors.green,
                    Colors.lightGreen,
                  ],
                ),
              ),
              child: RxBuilder(
                viewModel.focusedGameObjectId,
                builder: (context, gameObjectId) {
                  return GameObjectPropertiesPanel(
                    gameObjectId,
                    key: WidgetKey.gameObjectPropertiesPanel,
                  );
                },
                onLoading: GameObjectPropertiesPanel(
                  null,
                  key: WidgetKey.gameObjectPropertiesPanel,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
