import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/widgets.dart';

class SimulatePage extends StatelessWidget {
  const SimulatePage({
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
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    "Battle Field",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
