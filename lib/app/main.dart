import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/route.dart';
import 'package:game_prototype_simulator/injection.dart';

void main() {
  configureDependencies("runtime");
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Prototype Simulator',
      initialRoute: Routes.simulate,
      routes: {},
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
