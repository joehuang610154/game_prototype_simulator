// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:game_prototype_simulator/pages/simulate/scene/simulate_scene_controller.dart'
    as _i947;
import 'package:game_prototype_simulator/pages/simulate/simulate_controller.dart'
    as _i381;
import 'package:game_prototype_simulator/services/save_and_load/sl_service.dart'
    as _i675;
import 'package:game_prototype_simulator/utils/file_system.dart' as _i894;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _runtime = 'runtime';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i894.FileSystem>(
      () => _i894.FileSystem(),
      registerFor: {_runtime},
    );
    gh.lazySingleton<_i675.SlService>(
        () => _i675.SlService(fileSystem: gh<_i894.FileSystem>()));
    gh.factory<_i381.SimulateController>(
        () => _i381.SimulateController(slService: gh<_i675.SlService>()));
    gh.factoryParam<_i947.SimulateSceneController, String, dynamic>((
      sceneName,
      _,
    ) =>
        _i947.SimulateSceneController(sceneName: sceneName));
    return this;
  }
}
