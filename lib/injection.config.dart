// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:game_prototype_simulator/app/data/db.dart' as _i459;
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
    gh.lazySingleton<_i459.AppDatabase>(
      () => dbRegisterModule.db,
      registerFor: {_runtime},
    );
    return this;
  }
}

class _$DbRegisterModule extends _i459.DbRegisterModule {}
