import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/app_context.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeScreen();
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(app.tr.gamePrototypeSimulator),
        elevation: 4,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.keyboard_double_arrow_right),
            title: Text(app.tr.continueFromLast),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event_repeat),
            title: Text(app.tr.loadScene),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.dashboard_customize),
            title: Text(app.tr.newScene),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
