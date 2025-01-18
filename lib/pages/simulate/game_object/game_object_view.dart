import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

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
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              border: isFocused
                  ? Border.all(color: Colors.yellow, width: 3)
                  : Border.fromBorderSide(BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
