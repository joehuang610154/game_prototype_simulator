import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_view_model.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';
import 'package:provider/provider.dart';

class SceneTableScreen extends StatelessWidget {
  const SceneTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<SceneTableViewModel>(
      onInit: (viewModel) => viewModel.init(),
      builder: (context) => _SceneTableScreen(),
    );
  }
}

class _SceneTableScreen extends StatelessWidget {
  const _SceneTableScreen();

  @override
  Widget build(BuildContext context) {
    final SceneTableViewModel viewModel = context.read();

    return Scaffold(
      appBar: AppBar(
        title: Text('Table View - Scene'),
        elevation: 4,
      ),
      body: RxBuilder(
        viewModel.scenes,
        builder: (context, scenes) {
          return Table(
            children: scenes.map((scene) {
              return TableRow(
                children: [
                  TableCell(child: Text(scene.id.toString())),
                  TableCell(child: Text(scene.name)),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
