part of '../test_runner.dart';

abstract class TestDependencies {
  late WidgetTester tester;

  late MockUuidUtil uuidUtil;

  void configureTestDependencies() {
    uuidUtil = MockUuidUtil();

    configureDependencies("test");

    testingUuidUtil = uuidUtil;
  }

  void resetTestDependencies() {
    getIt.reset();

    testingUuidUtil = null;
  }
}
