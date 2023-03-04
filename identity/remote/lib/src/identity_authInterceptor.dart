

class IdentityAuthInterceptor {
  // final IdentityClient _client;
  //
  // IdentityAuthInterceptor(this._client);
  //
  // Future<RequestData> interceptRequest(RequestData data) async {
  //   if (data.headers.containsKey('Authorization')) {
  //     return data;
  //   }
  //
  //   final token = await _client.getToken();
  //
  //   if (token != null) {
  //     data.headers['Authorization'] = 'Bearer ${token.accessToken}';
  //   }
  //
  //   return data;
  // }
  //
  // Future<ResponseData> interceptResponse(ResponseData data) async {
  //   if (data.statusCode == 401) {
  //     await _client.revokeToken();
  //   }
  //
  //   return data;
  // }
}