import 'package:get_it/get_it.dart';
import 'package:local/src/AppConfiguratorImpl.dart';
import 'package:local/src/app_prefs.dart';
import 'package:remote/src/identity_data_source_imp.dart';
import 'package:repository/src/identity_repository_Imp.dart';
import 'package:repository/src/local_identity_data_source.dart';
import 'package:repository/src/remote_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usecase/src/identity_repository.dart';
import 'package:remote/src/dio_factory.dart';
import 'package:remote/src/identity_service.dart';

final instance = GetIt.instance;

Future<void> initAppModules() async {
  /// here we register all the dependencies
  /// we need to use in our app
  /// we use lazy singleton to make sure
  /// that we don't create the instance
  /// until we need it

  final sharedPrefs = await SharedPreferences.getInstance();
  final dio = await instance<DioFactory>().getDio();


  /**
   * App Configuration Module
   *  - App Configuration Implementation
   */
  instance.registerLazySingleton<LocalIdentityDataSource>(
      () => AppConfiguratorImpl(instance()));
  // close app configuration module


  /**
   * Data Base Module
   *  - App Preferences
   *  - Shared Preferences
   */
  // shared preferences instance
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  // app preferences instance
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
  // close data base module


  /**
   * Data Source Module
   */
  instance.registerLazySingleton<RemoteIdentityDataSource>(
      () => RemoteIdentityDataSourceImp(instance()));
  // close data source module


  /**
   * Repository Module
   */
  instance.registerLazySingleton<IdentityRepository>(
      () => IdentityRepositoryImp(instance()));
  // close repository module


  /**
   * Network Module
   */
  instance.registerLazySingleton<DioFactory>(() => DioFactory());
  instance.registerLazySingleton<IdentityService>(() => IdentityService(dio));
  // close network module
}
