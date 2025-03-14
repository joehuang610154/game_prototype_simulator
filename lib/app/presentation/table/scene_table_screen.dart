import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_view_model.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_scope.dart';
import 'package:provider/provider.dart';

class SceneTableScreen extends StatelessWidget {
  const SceneTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelScope<SceneTableViewModel>(
      onInit: (viewModel) => viewModel.init(),
      builder: (context) => _SceneTableScreen(),
    );
  }
}

class _SceneTableScreen extends StatefulWidget {
  const _SceneTableScreen();

  @override
  State<_SceneTableScreen> createState() => _SceneTableScreenState();
}

class _SceneTableScreenState extends State<_SceneTableScreen> {
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
          return SizedBox.expand(
            child: DataTable(
              showCheckboxColumn: false,
              headingRowColor: WidgetStateColor.resolveWith((states) {
                return app.c.secondary.withAlpha(48);
              }),
              columns: [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Actions')),
                DataColumn(label: Text('View Details')),
              ],
              rows: scenes.map((scene) {
                return DataRow(
                  onSelectChanged: (value) {},
                  cells: [
                    DataCell(Text(scene.id.toString())),
                    DataCell(Text(scene.name)),
                    DataCell(Row(children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      ),
                    ])),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {},
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
