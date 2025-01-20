import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_view_model.dart';
import 'package:provider/provider.dart';

class GameObjectView extends StatelessWidget {
  final EntityId id;
  final bool isFocused;
  final VoidCallback onTap;

  const GameObjectView(
    this.id, {
    super.key,
    required this.isFocused,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final SimulateViewModel viewModel = context.read();

    return GestureDetector(
      onTap: onTap,
      onPanUpdate: (details) {
        viewModel.moveGameObject(id, details.delta);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: RxBuilder(
          viewModel.gameObjectStyle(id),
          builder: (context, style) {
            return Container(
              width: style.width,
              height: style.height,
              decoration: BoxDecoration(
                color: style.color,
                shape: style.shape,
                borderRadius: style.borderRadius,
                border: isFocused
                    ? Border.all(color: Colors.yellow, width: 3)
                    : Border.fromBorderSide(BorderSide.none),
              ),
            );
          },
        ),
      ),
    );
  }
}
