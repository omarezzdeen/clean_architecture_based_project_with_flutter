

import 'identity_repository.dart';
import 'package:entity/src/user.dart';

class LoginUseCase {
  final IdentityRepository _identityRepository;

  LoginUseCase(this._identityRepository);

  Future<User> invoke(String username, String password) async {
    return await _identityRepository.login(username, password);
  }
}