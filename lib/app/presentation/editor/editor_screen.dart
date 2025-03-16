import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/common/app_scaffold.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _EditorScreen();
  }
}

class _EditorScreen extends StatelessWidget {
  const _EditorScreen();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(),
    );
  }
}
