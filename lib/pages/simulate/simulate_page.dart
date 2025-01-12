import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:game_prototype_simulator/pages/simulate/scene/simulate_scene_view.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_controller.dart';

class SimulatePage extends StatelessWidget {
  final SimulateController controller;

  const SimulatePage(
    this.controller, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.init(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        }

        return Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text("Simulate"),
                Gaps.w8,
                IconButton(
                  key: WidgetKey.createNewSceneButton,
                  onPressed: controller.createNewScene,
                  icon: Icon(Icons.add),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: SimulateSceneView(
            getIt(param1: snapshot.data!),
          ),
        );
      },
    );
  }
}
