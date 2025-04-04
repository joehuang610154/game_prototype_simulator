import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/injection.dart';

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
      routerConfig: goRouter,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
      ],
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        listTileTheme: ListTileThemeData(
          selectedTileColor: Colors.orange.withAlpha(50),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
