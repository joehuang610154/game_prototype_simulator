import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:go_router/go_router.dart';

void main() {
  configureDependencies("runtime");
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Game Prototype Simulator',
      routerConfig: GoRouter(routes: $appRoutes),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
