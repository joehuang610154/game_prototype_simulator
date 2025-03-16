import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/presentation/editor/editor_screen.dart';
import 'package:game_prototype_simulator/app/presentation/home/home_screen.dart';
import 'package:game_prototype_simulator/app/presentation/table/scene_table_screen.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';
import 'package:game_prototype_simulator/framework/app_context/app_route.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

final goRouter = GoRouter(
  navigatorKey: app.key,
  routes: $appRoutes,
);

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

@TypedGoRoute<EditorRoute>(
  path: '/editor/:sceneId',
)
class EditorRoute extends GoRouteData implements AppRoute {
  final String sceneId;

  const EditorRoute({
    required this.sceneId,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditorScreen(sceneId: sceneId);
  }

  @override
  String get path => location;
}

@TypedGoRoute<SceneTableRoute>(
  path: '/table/scene',
)
class SceneTableRoute extends GoRouteData implements AppRoute {
  const SceneTableRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SceneTableScreen();
  }

  @override
  String get path => location;
}
