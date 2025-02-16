import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/table/display_as_table_view_model.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';
import 'package:provider/provider.dart';

class DisplayAsTableScreen extends StatelessWidget {
  const DisplayAsTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<DisplayAsTableViewModel>(
      onInit: (viewModel) => viewModel.init(),
      builder: (context) => _DisplayAsTableScreen(),
    );
  }
}

class _DisplayAsTableScreen extends StatelessWidget {
  const _DisplayAsTableScreen();

  @override
  Widget build(BuildContext context) {
    final DisplayAsTableViewModel viewModel = context.read();

    return Scaffold(
      appBar: AppBar(
        title: Text('Table View - Scene'),
        elevation: 4,
      ),
      body: RxBuilder(
        viewModel.model,
        builder: (context, model) {
          return Table(
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Text('scene-id'),
                  ),
                  TableCell(
                    child: Text('Test Scene'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
