part of '../test_runner.dart';

abstract class TestDependencies {
  late WidgetTester tester;

  late MockUuidUtil uuidUtil;

  late AppDatabase db;

  void configureTestDependencies() {
    uuidUtil = MockUuidUtil();
    db = AppDatabase(driftDatabase(name: "testdb"));

    getIt.registerSingleton<AppDatabase>(db);

    configureDependencies("test");

    testingUuidUtil = uuidUtil;
  }

  void resetTestDependencies() {
    getIt.reset();

    testingUuidUtil = null;
  }
}
