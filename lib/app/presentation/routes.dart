import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/home/home_screen.dart';
import 'package:game_prototype_simulator/app/presentation/table/display_as_table_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_route.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData implements AppRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }

  @override
  String get path => location;
}

@TypedGoRoute<DisplayAsTableRoute>(path: '/table')
class DisplayAsTableRoute extends GoRouteData implements AppRoute {
  const DisplayAsTableRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DisplayAsTableScreen();
  }

  @override
  String get path => location;
}
