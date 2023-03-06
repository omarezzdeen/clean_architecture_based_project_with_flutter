import 'package:entity/src/user.dart';
import 'package:repository/src/remote_data_source.dart';
import 'package:usecase/src/identity_repository.dart';

import 'mappers/user_mapper.dart';

class IdentityRepositoryImp implements IdentityRepository {

  final RemoteIdentityDataSource _identityRemoteDataSource;

  IdentityRepositoryImp(this._identityRemoteDataSource);

  @override
  Future<User> login(String username, String password) async {
    final data = await _identityRemoteDataSource.login(username, password);
    return data.toEntity();
  }

}