// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $editorRoute,
      $sceneTableRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editorRoute => GoRouteData.$route(
      path: '/editor/:sceneId',
      factory: $EditorRouteExtension._fromState,
    );

extension $EditorRouteExtension on EditorRoute {
  static EditorRoute _fromState(GoRouterState state) => EditorRoute(
        sceneId: state.pathParameters['sceneId']!,
      );

  String get location => GoRouteData.$location(
        '/editor/${Uri.encodeComponent(sceneId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sceneTableRoute => GoRouteData.$route(
      path: '/table/scene',
      factory: $SceneTableRouteExtension._fromState,
    );

extension $SceneTableRouteExtension on SceneTableRoute {
  static SceneTableRoute _fromState(GoRouterState state) =>
      const SceneTableRoute();

  String get location => GoRouteData.$location(
        '/table/scene',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
