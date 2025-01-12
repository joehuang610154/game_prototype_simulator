part of '../test_runner.dart';

abstract class TestDependencies {
  late MemoryFileSystem fileSystem;

  void configureTestDependencies() {
    fileSystem = MemoryFileSystem();

    getIt.registerLazySingleton<FileSystem>(() => fileSystem);
    configureDependencies("test");
  }
}
