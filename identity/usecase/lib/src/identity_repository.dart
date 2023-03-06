import 'package:entity/src/user.dart';


abstract class IdentityRepository {

  Future<User> login(String username,String password);

}