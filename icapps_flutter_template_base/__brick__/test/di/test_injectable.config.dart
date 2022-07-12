// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:{{project_name}}/database/{{project_name}}_database.dart'
    as _i11;
import 'package:{{project_name}}/database/todo/todo_dao_storage.dart' as _i24;
import 'package:{{project_name}}/navigator/main_navigation.dart' as _i18;
import 'package:{{project_name}}/repository/debug/debug_repository.dart' as _i6;
import 'package:{{project_name}}/repository/locale/locale_repository.dart'
    as _i15;
import 'package:{{project_name}}/repository/login/login_repository.dart'
    as _i16;
import 'package:{{project_name}}/repository/refresh/refresh_repository.dart'
    as _i19;
import 'package:{{project_name}}/repository/secure_storage/auth/auth_storage.dart'
    as _i3;
import 'package:{{project_name}}/repository/secure_storage/secure_storage.dart'
    as _i20;
import 'package:{{project_name}}/repository/shared_prefs/local/local_storage.dart'
    as _i14;
import 'package:{{project_name}}/repository/todo/todo_repository.dart' as _i26;
import 'package:{{project_name}}/viewmodel/debug/debug_platform_selector_viewmodel.dart'
    as _i5;
import 'package:{{project_name}}/viewmodel/debug/debug_viewmodel.dart' as _i7;
import 'package:{{project_name}}/viewmodel/global/global_viewmodel.dart'
    as _i12;
import 'package:{{project_name}}/viewmodel/license/license_viewmodel.dart'
    as _i13;
import 'package:{{project_name}}/viewmodel/login/login_viewmodel.dart' as _i17;
import 'package:{{project_name}}/viewmodel/splash/splash_viewmodel.dart'
    as _i22;
import 'package:{{project_name}}/viewmodel/todo/todo_add/todo_add_viewmodel.dart'
    as _i23;
import 'package:{{project_name}}/viewmodel/todo/todo_list/todo_list_viewmodel.dart'
    as _i25;
import 'package:{{project_name}}/webservice/todo/todo_service.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:icapps_architecture/icapps_architecture.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import 'test_injectable.dart' as _i28;

const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initTestGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AuthStorage>(registerModule.getAuthStoring);
  gh.singleton<_i4.ConnectivityHelper>(
      registerModule.getConnectivityControlling);
  gh.singleton<_i5.DebugPlatformSelectorViewModel>(
      registerModule.getDebugPlatformSelectorViewModel);
  gh.singleton<_i6.DebugRepository>(registerModule.getDebugRepo);
  gh.singleton<_i7.DebugViewModel>(registerModule.getDebugViewModel);
  gh.singleton<_i8.Dio>(registerModule.getDio);
  gh.singleton<_i9.FirebaseAnalytics>(registerModule.getFirebaseAnalytics,
      registerFor: {_test});
  gh.singleton<_i10.FlutterSecureStorage>(
      registerModule.getFlutterSecureStorage);
  gh.singleton<_i11.{{project_name.pascalCase()}}Database>(
      registerModule.{{project_name.camelCase()}}Database,
      registerFor: {_test});
  gh.singleton<_i12.GlobalViewModel>(registerModule.getGlobalViewModel);
  gh.singleton<_i13.LicenseViewModel>(registerModule.getLicenseViewModel);
  gh.singleton<_i14.LocalStorage>(registerModule.getLocalStoring);
  gh.singleton<_i15.LocaleRepository>(registerModule.getLocaleRepo);
  gh.singleton<_i16.LoginRepository>(registerModule.getLoginRepo);
  gh.singleton<_i17.LoginViewModel>(registerModule.getLoginViewModel);
  gh.singleton<_i18.MainNavigation>(registerModule.getMainNavigation);
  gh.singleton<_i19.RefreshRepository>(registerModule.getRefreshRepo);
  gh.singleton<_i20.SecureStorage>(registerModule.getSecureStoring);
  gh.singleton<_i4.SharedPreferenceStorage>(
      registerModule.getSharedPrefsStoring);
  gh.singleton<_i21.SharedPreferences>(registerModule.getSharedPreferences);
  gh.singleton<_i22.SplashViewModel>(registerModule.getSplashViewModel);
  gh.singleton<_i23.TodoAddViewModel>(registerModule.getTodoAddViewModel);
  gh.singleton<_i24.TodoDaoStorage>(registerModule.getTodoDaoStoring);
  gh.singleton<_i25.TodoListViewModel>(registerModule.getTodoListViewModel);
  gh.singleton<_i26.TodoRepository>(registerModule.getTodoRepo);
  gh.singleton<_i27.TodoService>(registerModule.getTodoService);
  return get;
}

class _$RegisterModule extends _i28.RegisterModule {}
