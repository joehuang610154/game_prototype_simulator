import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:game_prototype_simulator/framework/app_context/app_route.dart';
import 'package:go_router/go_router.dart';

final AppContext app = AppContext();

class AppContext {
  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  BuildContext get context => key.currentContext!;

  TextTheme get ts => Theme.of(context).textTheme;
  ColorScheme get c => Theme.of(context).colorScheme;

  Locale get locale => Localizations.localeOf(context);
  AppLocalizations get tr => AppLocalizations.of(context)!;

  Future<T?> push<T>(AppRoute route) async {
    return await app.context.push<T>(route.path);
  }

  void pop<T extends Object>([T? result]) {
    app.context.pop<T>(result);
  }
}
