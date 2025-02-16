// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:game_prototype_simulator/app/data/db.dart' as _i459;
import 'package:game_prototype_simulator/app/data/repositories/save_scene_to_storage_repository.dart'
    as _i683;
import 'package:game_prototype_simulator/app/domain/repositories/save_scene_repository.dart'
    as _i262;
import 'package:game_prototype_simulator/app/domain/useCases/create_new_scene_use_case.dart'
    as _i807;
import 'package:game_prototype_simulator/app/presentation/common/popup/create_new_scene/create_new_scene_view_model.dart'
    as _i361;
import 'package:game_prototype_simulator/app/presentation/home/home_view_model.dart'
    as _i225;
import 'package:game_prototype_simulator/app/presentation/table/display_as_table_view_model.dart'
    as _i457;
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
    final dbRegisterModule = _$DbRegisterModule();
    gh.factory<_i457.DisplayAsTableViewModel>(
        () => _i457.DisplayAsTableViewModel());
    gh.factory<_i361.CreateNewSceneViewModel>(
        () => _i361.CreateNewSceneViewModel());
    gh.singleton<_i459.AppDatabase>(
      () => dbRegisterModule.db,
      registerFor: {_runtime},
      dispose: _i459.AppDatabase.closeDb,
    );
    gh.lazySingleton<_i262.SaveSceneRepository>(
        () => _i683.SaveSceneToStorageRepository(db: gh<_i459.AppDatabase>()));
    gh.lazySingleton<_i807.CreateNewSceneUseCase>(() =>
        _i807.CreateNewSceneUseCase(
            saveSceneRepository: gh<_i262.SaveSceneRepository>()));
    gh.factory<_i225.HomeViewModel>(() => _i225.HomeViewModel(
        createNewSceneUseCase: gh<_i807.CreateNewSceneUseCase>()));
    return this;
  }
}

class _$DbRegisterModule extends _i459.DbRegisterModule {}
