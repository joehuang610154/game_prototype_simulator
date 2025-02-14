import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final AppContext app = AppContext();

class AppContext {
  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  BuildContext get context => key.currentContext!;

  TextTheme get ts => Theme.of(context).textTheme;
  ColorScheme get c => Theme.of(context).colorScheme;

  Locale get locale => Localizations.localeOf(context);
  AppLocalizations get tr => AppLocalizations.of(context)!;
}
