import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/app/data/db.dart';
import 'package:game_prototype_simulator/app/presentation/routes.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_prototype_simulator/app/main.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';
import 'package:go_router/go_router.dart';

import '../doubles/mock_uuid_util.dart';

export 'package:flutter_test/flutter_test.dart';

part 'test_runner/test_dependencies.dart';
part 'test_runner/test_actions.dart';

abstract class TestRunner extends TestDependencies with TestActions {
  @mustCallSuper
  void defaultSetup() {
    TestWidgetsFlutterBinding.ensureInitialized();
    TestWidgetsFlutterBinding.instance.platformDispatcher.views.first
        .physicalSize = const Size(1920, 1080);
    TestWidgetsFlutterBinding
        .instance.platformDispatcher.views.first.devicePixelRatio = 1.0;

    configureTestDependencies();
  }

  @mustCallSuper
  void defaultTearDown() {
    resetTestDependencies();

    goRouter.restore(RouteMatchList.empty);
  }

  TestRunner() {
    setUp(defaultSetup);
    tearDown(defaultTearDown);

    runTests();
  }

  void runTests();
}
