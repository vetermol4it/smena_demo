// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:smena_demo/common/navigation/app_router.dart' as _i3;
import 'package:smena_demo/features/menu/data/api_client/menu_api_client.dart'
    as _i4;
import 'package:smena_demo/features/menu/data/repository/menu_repository.dart'
    as _i7;
import 'package:smena_demo/features/menu/domain/cubit/menu_cubit.dart' as _i8;
import 'package:smena_demo/features/menu/domain/repository/i_menu_repository.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.MenuApiClient>(() => _i4.MenuApiClient(gh<_i5.Dio>()));
    gh.factory<_i6.IMenuRepository>(
        () => _i7.MenuRepository(gh<_i4.MenuApiClient>()));
    gh.factory<_i8.MenuCubit>(() => _i8.MenuCubit(gh<_i6.IMenuRepository>()));
    return this;
  }
}
