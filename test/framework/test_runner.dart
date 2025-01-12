import 'package:game_prototype_simulator/injection.dart';

import 'test_runner/test_dependencies.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class TestRunner extends TestDependencies {
  late WidgetTester tester;

  TestRunner() {
    setUp(() {
      configureTestDependencies();
    });

    tearDown(() {
      getIt.reset();
    });

    runTests();
  }

  void runTests();
}
