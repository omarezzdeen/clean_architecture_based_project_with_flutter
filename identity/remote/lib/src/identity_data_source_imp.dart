import 'package:repository/src/models/user_dto.dart';
import 'package:repository/src/remote_data_source.dart';

import 'api/identity_service.dart';

class RemoteIdentityDataSourceImp implements RemoteIdentityDataSource {
  final IdentityService _identityService;

  RemoteIdentityDataSourceImp(this._identityService);

  @override
  Future<UserDTO> login(String username, String password) {
     return _identityService.login(username, password);
  }

}
