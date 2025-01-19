import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widget_key.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';
import 'package:game_prototype_simulator/domain/game_simulation/entities/game_object.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/rx_builder.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';
import 'package:game_prototype_simulator/pages/simulate/game_object_properties_panel/game_object_properties_view_model.dart';
import 'package:provider/provider.dart';

class GameObjectPropertiesPanel extends StatelessWidget {
  final GameObject? gameObject;

  const GameObjectPropertiesPanel(
    this.gameObject, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GameObjectPropertiesViewModel>(
      key: ValueKey(gameObject),
      onInit: (viewModel) => viewModel.init(gameObject),
      builder: (context) => GameObjectPropertiesView(),
    );
  }
}

class GameObjectPropertiesView extends StatelessWidget {
  const GameObjectPropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    final GameObjectPropertiesViewModel viewModel = context.read();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(80),
        borderRadius: BorderRadius.circular(8),
      ),
      child: viewModel.hasFocusedGameObject
          ? Column(
              children: [
                Row(
                  children: [
                    Text("Name"),
                    Gaps.w8,
                    Expanded(
                      child: PropertyField(
                        key: WidgetKey.gameObjectPropertyField("name"),
                        property: viewModel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 17, thickness: 1, color: Colors.black),
                EditPropertiesView(),
              ],
            )
          : SizedBox.expand(
              child: Center(child: Text("Please select a game object.")),
            ),
    );
  }
}

class EditPropertiesView extends StatefulWidget {
  const EditPropertiesView({super.key});

  @override
  State<EditPropertiesView> createState() => _EditPropertiesViewState();
}

class _EditPropertiesViewState extends State<EditPropertiesView> {
  GameObjectPropertiesViewModel get viewModle => context.read();

  bool editNewProperty = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: 32,
            height: 32,
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.white,
              iconSize: 16,
              onPressed: () => setState(() => editNewProperty = true),
              style: IconButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: Size.square(24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PropertyField extends StatelessWidget {
  final Rx<String> property;
  final TextStyle style;

  const PropertyField({
    super.key,
    required this.property,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    final GameObjectPropertiesViewModel viewModel = context.read();

    final TextEditingController textController =
        TextEditingController(text: property.value);

    return RxBuilder(
      property,
      builder: (context, property) {
        return PropertyTextField(
          textController: textController,
          onChanged: viewModel.rename,
        );
      },
      onLoading: SizedBox(),
    );
  }
}

class PropertyTextField extends StatefulWidget {
  final TextEditingController textController;
  final ValueChanged<String> onChanged;

  const PropertyTextField({
    super.key,
    required this.textController,
    required this.onChanged,
  });

  @override
  State<PropertyTextField> createState() => _PropertyTextFieldState();
}

class _PropertyTextFieldState extends State<PropertyTextField> {
  TextEditingController get controller => widget.textController;
  FocusNode focusNode = FocusNode();

  bool isEditMode = false;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontWeight: FontWeight.bold,
    );

    if (controller.text.isEmpty || isEditMode) {
      return TextField(
        focusNode: focusNode,
        controller: controller,
        style: style,
        onChanged: (value) {
          isEditMode = true;
          widget.onChanged(value);
        },
        onEditingComplete: () => setState(() => isEditMode = false),
      );
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          setState(() => isEditMode = true);
          focusNode.requestFocus();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(
            controller.text,
            style: style,
          ),
        ),
      ),
    );
  }
}
