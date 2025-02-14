import 'package:flutter/material.dart';

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
        title: Text("Game Prototype Simulator"),
        elevation: 4,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.keyboard_double_arrow_right),
            title: Text("Continue"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event_repeat),
            title: Text("Load Scene"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.dashboard_customize),
            title: Text("New Scene"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
