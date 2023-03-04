import 'package:repository/src/remote_data_source.dart';
import 'package:usecase/src/identity_repository.dart';

class IdentityRepositoryImp implements IdentityRepository {
  final RemoteIdentityDataSource _identityRemoteDataSource;
  // TODO: dependency on local data source here but not implemented yet
  IdentityRepositoryImp(this._identityRemoteDataSource);

}