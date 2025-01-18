import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/entity_id.dart';

class GameObjectView extends StatelessWidget {
  final EntityId id;

  const GameObjectView(
    this.id, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
