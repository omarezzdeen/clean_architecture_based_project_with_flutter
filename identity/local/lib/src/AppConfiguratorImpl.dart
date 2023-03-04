import 'package:repository/src/local_identity_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfiguratorImpl implements LocalIdentityDataSource {
  final SharedPreferences _userDataStore;

  AppConfiguratorImpl(this._userDataStore);
}