import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/route.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_controller.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Prototype Simulator',
      initialRoute: Routes.simulate,
      routes: {
        Routes.simulate: (context) => SimulatePage(SimulateController()),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
