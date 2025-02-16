part of '../test_runner.dart';

abstract class TestDependencies {
  late WidgetTester tester;

  late MockUuidUtil uuidUtil;

  late AppDatabase db;

  void configureTestDependencies() {
    uuidUtil = MockUuidUtil();
    db = AppDatabase(NativeDatabase.memory());

    getIt.registerSingleton<AppDatabase>(db, dispose: (db) => db.close());

    configureDependencies("test");

    testingUuidUtil = uuidUtil;
  }

  void resetTestDependencies() {
    getIt.reset();

    testingUuidUtil = null;
  }
}
