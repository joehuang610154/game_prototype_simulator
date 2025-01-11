import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_controller.dart';

class SimulatePage extends StatelessWidget {
  final SimulateController controller;

  const SimulatePage(
    this.controller, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Simulate"),
            Gaps.w8,
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              style: IconButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
