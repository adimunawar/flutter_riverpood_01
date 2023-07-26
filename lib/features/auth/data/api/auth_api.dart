import 'package:flutter_riverpood_01/core/network/constant.dart/end_points.dart';
import 'package:flutter_riverpood_01/core/network/dio_client.dart';

class AuthApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  AuthApi(this._dioClient);

  Future loginEmailPassword(
      {required String email, required String password}) async {
    try {
      final res = await _dioClient.post(Endpoints.login,
          queryParameters: {'email': email, 'password': password});
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
