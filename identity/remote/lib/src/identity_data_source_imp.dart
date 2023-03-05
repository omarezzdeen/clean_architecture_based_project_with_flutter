import 'package:repository/src/remote_data_source.dart';

import 'api/identity_service.dart';

class RemoteIdentityDataSourceImp implements RemoteIdentityDataSource {
  final IdentityService _identityService;

  RemoteIdentityDataSourceImp(this._identityService);

}
