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

class EditPropertiesView extends StatelessWidget {
  const EditPropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    final GameObjectPropertiesViewModel viewModle = context.read();

    return Column(
      children: [
        Text(
          "Properties",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Gaps.h12,
        RxBuilder(
          viewModle.properties,
          builder: (context, properties) {
            print("update properties $properties");

            return Column(
              children: [
                PropertyKeyValueTextField("", ""),
                ...properties.entries.map((entry) {
                  return PropertyKeyValueTextField(entry.key, entry.value);
                }),
              ],
            );
          },
        ),
      ],
    );
  }
}

class PropertyKeyValueTextField extends StatelessWidget {
  final String initKey;
  final String initValue;

  const PropertyKeyValueTextField(
    this.initKey,
    this.initValue, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GameObjectPropertiesViewModel viewModel = context.read();

    final TextEditingController keyTextController =
        TextEditingController(text: initKey);
    final TextEditingController valueTextController =
        TextEditingController(text: initValue);

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: PropertyTextField(
            textController: keyTextController,
            onCompleted: (key) {
              if (key.isEmpty) {
                keyTextController.text = initKey;
                return;
              }

              viewModel.setProperty(
                key,
                valueTextController.text,
              );
            },
            placeholder: "new",
          ),
        ),
        Gaps.w8,
        Expanded(
          flex: 2,
          child: PropertyTextField(
            textController: valueTextController,
            onCompleted: (value) {
              viewModel.setProperty(
                keyTextController.text,
                value,
              );
            },
          ),
        ),
      ],
    );
  }
}

class PropertyField extends StatelessWidget {
  final Rx<String> property;

  const PropertyField({
    super.key,
    required this.property,
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
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onCompleted;
  final String? placeholder;

  const PropertyTextField({
    super.key,
    required this.textController,
    this.onChanged,
    this.onCompleted,
    this.placeholder,
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
    if (controller.text.isEmpty || isEditMode) {
      return TextField(
        focusNode: focusNode,
        controller: controller,
        onChanged: (value) {
          isEditMode = true;
          widget.onChanged?.call(value);
        },
        onEditingComplete: onCompleted,
        onTapOutside: (_) => onCompleted(),
        decoration: InputDecoration(
          hintText: widget.placeholder,
        ),
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
          child: Text(controller.text),
        ),
      ),
    );
  }

  void onCompleted() {
    widget.onCompleted?.call(controller.text);
    setState(() => isEditMode = false);
  }
}
