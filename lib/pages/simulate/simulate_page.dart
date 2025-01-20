import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';
import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
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
                  RxBuilder(
                    viewModel.focusedGameObject,
                    builder: (context, gameObject) {
                      return IconButton(
                        key: WidgetKey.setGameObjectShape,
                        onPressed: () async {
                          final GameObjectShape? shape = await showDialog(
                            context: context,
                            builder: (context) => ChangeShapeDialog(),
                          );
                          if (shape == null) return;

                          viewModel.setShape(shape);
                        },
                        icon: Icon(Icons.rectangle_outlined),
                      );
                    },
                    onLoading: IconButton(
                      key: WidgetKey.setGameObjectShape,
                      onPressed: null,
                      icon: Icon(Icons.rectangle_outlined),
                    ),
                  ),
                  RxBuilder(
                    viewModel.focusedGameObject,
                    builder: (context, gameObject) {
                      return IconButton(
                        key: WidgetKey.setGameObjectColor,
                        onPressed: () async {
                          final Color? color = await showDialog(
                            context: context,
                            builder: (context) => ChangeColorDialog(
                              initColor: gameObject?.color ?? Colors.blue,
                            ),
                          );
                          if (color == null) return;

                          viewModel.setColor(color);
                        },
                        icon: Icon(Icons.color_lens),
                      );
                    },
                    onLoading: IconButton(
                      key: WidgetKey.setGameObjectShape,
                      onPressed: null,
                      icon: Icon(Icons.color_lens_outlined),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RxBuilder(
                viewModel.gameObjects,
                builder: (context, gameObjects) {
                  return Stack(
                    children: gameObjects.map((gameObject) {
                      return RxBuilder(
                        viewModel.isFocused(gameObject.id),
                        builder: (context, isFocused) {
                          return RxBuilder(
                            viewModel.gameObjectPosition(gameObject.id),
                            builder: (context, position) {
                              return Positioned(
                                left: position.dx,
                                top: position.dy,
                                child: GameObjectView(
                                  gameObject.id,
                                  key: WidgetKey.gameObject(gameObject.id),
                                  isFocused: isFocused,
                                  onTap: () => viewModel
                                      .focusOnGameObject(gameObject.id),
                                ),
                              );
                            },
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
                viewModel.focusedGameObject,
                builder: (context, gameObject) =>
                    GameObjectPropertiesPanel(gameObject),
                onLoading: GameObjectPropertiesPanel(null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangeColorDialog extends StatefulWidget {
  final Color initColor;

  const ChangeColorDialog({super.key, required this.initColor});

  @override
  State<ChangeColorDialog> createState() => _ChangeColorDialogState();
}

class _ChangeColorDialogState extends State<ChangeColorDialog> {
  late Color pickedColor = widget.initColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Change Color"),
      contentPadding: const EdgeInsets.all(16),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorPicker(
            pickerColor: pickedColor,
            onColorChanged: (color) => setState(() => pickedColor = color),
            labelTypes: [],
            colorPickerWidth: 200,
            portraitOnly: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(pickedColor);
          },
          child: Text("Comfirm"),
        ),
      ],
    );
  }
}

class ChangeShapeDialog extends StatefulWidget {
  const ChangeShapeDialog({super.key});

  @override
  State<ChangeShapeDialog> createState() => _ChangeShapeDialogState();
}

class _ChangeShapeDialogState extends State<ChangeShapeDialog> {
  int step = 1;
  int shapeType = 0;

  final TextEditingController widthController =
      TextEditingController(text: "50");
  final TextEditingController heightController =
      TextEditingController(text: "50");

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text("Change Shape"),
      contentPadding: const EdgeInsets.all(16),
      children: switch (step) {
        1 => [
            ElevatedButton(
              onPressed: () => setState(() {
                shapeType = 1;
                step = 2;
              }),
              child: Icon(Icons.circle_outlined),
            ),
            Gaps.h4,
            ElevatedButton(
              onPressed: () => setState(() {
                shapeType = 2;
                step = 2;
              }),
              child: Icon(Icons.rectangle_outlined),
            ),
            Gaps.h4,
            ElevatedButton(
              onPressed: () => setState(() {
                shapeType = 3;
                step = 2;
              }),
              child: Icon(Icons.rectangle_rounded),
            ),
          ],
        2 => (switch (shapeType) {
              1 => <Widget>[
                  TextField(
                    controller: widthController,
                    decoration: InputDecoration(label: Text("Size")),
                  ),
                ],
              2 || 3 => <Widget>[
                  TextField(
                    controller: widthController,
                    decoration: InputDecoration(label: Text("Width")),
                  ),
                  Gaps.h4,
                  TextField(
                    controller: heightController,
                    decoration: InputDecoration(label: Text("Height")),
                  ),
                ],
              _ => <Widget>[],
            }) +
            <Widget>[
              Gaps.h8,
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(switch (shapeType) {
                    1 => GameObjectShape.circle(
                        double.parse(widthController.text)),
                    2 => GameObjectShape.rectangle(Size(
                        double.parse(widthController.text),
                        double.parse(heightController.text),
                      )),
                    3 => GameObjectShape.roundedRectangle(Size(
                        double.parse(widthController.text),
                        double.parse(heightController.text),
                      )),
                    _ => null,
                  });
                },
                child: Text("Comfirm"),
              ),
            ],
        _ => [],
      },
    );
  }
}
