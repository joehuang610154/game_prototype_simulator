import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';
import 'package:game_prototype_simulator/pages/simulate/game_object_properties_panel/game_object_properties_view_model.dart';
import 'package:provider/provider.dart';

class GameObjectPropertiesPanel extends StatelessWidget {
  final EntityId? gameObjectId;

  const GameObjectPropertiesPanel(
    this.gameObjectId, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GameObjectPropertiesViewModel>(
        builder: (context) => GameObjectPropertiesView(gameObjectId));
  }
}

class GameObjectPropertiesView extends StatelessWidget {
  final EntityId? gameObjectId;

  const GameObjectPropertiesView(
    this.gameObjectId, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GameObjectPropertiesViewModel viewModel = context.read();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(80),
        borderRadius: BorderRadius.circular(8),
      ),
      child: gameObjectId == null
          ? SizedBox.expand(
              child: Center(child: Text("Please select a game object.")),
            )
          : Column(
              children: [
                Row(
                  children: [
                    Text("Name"),
                    Gaps.w8,
                    Expanded(
                      child: PropertyField(
                        property: viewModel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}

class PropertyField extends StatefulWidget {
  final Rx<String> property;
  final TextStyle style;

  const PropertyField({
    super.key,
    required this.property,
    required this.style,
  });

  @override
  State<PropertyField> createState() => _PropertyFieldState();
}

class _PropertyFieldState extends State<PropertyField> {
  GameObjectPropertiesViewModel get viewModel => context.read();

  TextEditingController textController = TextEditingController();

  bool isEditMode = false;

  @override
  Widget build(BuildContext context) {
    return RxBuilder(
      widget.property,
      builder: (context, property) {
        if (property.isEmpty || isEditMode) {
          return TextField(
            controller: textController,
            style: widget.style,
            onChanged: (value) {
              isEditMode = true;
              viewModel.rename(value);
            },
            onEditingComplete: () => setState(() => isEditMode = false),
          );
        }

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => setState(() => isEditMode = true),
            child: Text(
              property,
              style: widget.style,
            ),
          ),
        );
      },
      onLoading: SizedBox(),
    );
  }
}
