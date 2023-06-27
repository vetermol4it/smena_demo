import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'init_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.init();
  getIt.registerLazySingleton(() => Dio());
  getIt.registerSingletonAsync(() => SharedPreferences.getInstance());
}
