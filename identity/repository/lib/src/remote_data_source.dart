

import 'models/user_dto.dart';

abstract class RemoteIdentityDataSource {

  Future<UserDTO> login(String username, String password);

}