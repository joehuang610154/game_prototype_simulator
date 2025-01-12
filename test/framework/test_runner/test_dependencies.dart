import 'package:game_prototype_simulator/injection.dart';
import 'package:game_prototype_simulator/utils/file_system.dart';

import '../../doubles/memory_file_system.dart';

abstract class TestDependencies {
  late MemoryFileSystem fileSystem;

  void configureTestDependencies() {
    fileSystem = MemoryFileSystem();

    getIt.registerLazySingleton<FileSystem>(() => fileSystem);
    configureDependencies("test");
  }
}
