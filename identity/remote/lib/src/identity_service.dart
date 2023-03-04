import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: "")
abstract class IdentityService {
  factory IdentityService(Dio dio, {String? baseUrl}) {
    // TODO: implement IdentityService
    throw UnimplementedError();
  } /*= _IdentityService; */

}
