import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_prototype_simulator/app/main.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';

import '../doubles/mock_uuid_util.dart';

export 'package:flutter_test/flutter_test.dart';

part 'test_runner/test_dependencies.dart';
part 'test_runner/test_actions.dart';

abstract class TestRunner extends TestDependencies with TestActions {
  TestRunner() {
    setUp(() {
      configureTestDependencies();
    });

    tearDown(() {
      resetTestDependencies();
    });

    runTests();
  }

  void runTests();
}
