import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/framework/app_context.dart';
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
      routerConfig: GoRouter(
        navigatorKey: app.key,
        routes: $appRoutes,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('zh'),
      ],
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
