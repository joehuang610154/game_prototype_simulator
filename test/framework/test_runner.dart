import 'package:game_prototype_simulator/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_prototype_simulator/utils/file_system.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';

import '../doubles/memory_file_system.dart';
import '../doubles/mock_uuid_util.dart';

export 'package:flutter_test/flutter_test.dart';

part 'test_runner/test_dependencies.dart';

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
