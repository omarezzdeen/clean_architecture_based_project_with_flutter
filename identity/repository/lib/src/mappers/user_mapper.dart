import 'package:entity/src/user.dart';

import '../models/user_dto.dart';

extension UserMapper on UserDTO {
  User toEntity() {
    return User(
      id: customer?.id ?? 0,
      userName: customer?.name ?? '',
      email: contacts?.email ?? '',
    );
  }
}
