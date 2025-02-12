import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/view_model_provider.dart';

class SceneScreen extends StatelessWidget {
  const SceneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider(
      builder: (context) {
        return _SceneScreen();
      },
    );
  }
}

class _SceneScreen extends StatelessWidget {
  const _SceneScreen();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
