import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/components/rename_dialog/rename_dialog.dart';
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

        final scene = snapshot.data!;
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
                      Text(
                        scene.name,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade900,
                        ),
                      ),
                      Gaps.w4,
                      InkWell(
                        onTap: () async {
                          String? newName = await showDialog(
                            context: context,
                            builder: (context) => RenameDialog(),
                          );

                          if (newName != null) {
                            await controller.renameScene(newName);
                          }
                        },
                        child: Icon(
                          Icons.edit,
                          size: 14,
                        ),
                      ),
                      Gaps.w4,
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.delete,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ),
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
            getIt(param1: scene.id),
          ),
        );
      },
    );
  }
}
