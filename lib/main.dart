import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/constants/route.dart';
import 'package:game_prototype_simulator/firebase_options.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:game_prototype_simulator/pages/simulate/simulate_page.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      routes: {
        Routes.simulate: (context) => SimulatePage(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
