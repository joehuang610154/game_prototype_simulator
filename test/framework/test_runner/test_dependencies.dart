part of '../test_runner.dart';

abstract class TestDependencies {
  late WidgetTester tester;

  late MemoryFileSystem fileSystem;

  late MockUuidUtil uuidUtil;

  void configureTestDependencies() {
    fileSystem = MemoryFileSystem();
    uuidUtil = MockUuidUtil();

    getIt.registerLazySingleton<FileSystem>(() => fileSystem);
    configureDependencies("test");

    testingUuidUtil = uuidUtil;
  }

  void resetTestDependencies() {
    getIt.reset();

    testingUuidUtil = null;
  }
}
