part of '../test_runner.dart';

abstract class TestDependencies {
  late MemoryFileSystem fileSystem;

  late MockUuidUtil uuidUtil;

  void configureTestDependencies() {
    fileSystem = MemoryFileSystem();
    uuidUtil = MockUuidUtil();

    getIt.registerLazySingleton<FileSystem>(() => fileSystem);
    configureDependencies("test");

    UuidUtil.instance = uuidUtil;
  }
}
