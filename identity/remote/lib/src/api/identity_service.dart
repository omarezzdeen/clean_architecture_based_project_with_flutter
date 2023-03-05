import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:repository/src/models/user_dto.dart';

import '../util/constants.dart';

part 'identity_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class IdentityService {
  factory IdentityService(Dio dio, {String? baseUrl}) = _IdentityService;

  @POST("/identity/login")
  Future<UserDTO> login();
}
