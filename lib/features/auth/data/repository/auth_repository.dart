import 'package:dio/dio.dart';
import 'package:flutter_riverpood_01/core/enum/type_defs.dart';
import 'package:flutter_riverpood_01/core/network/dio_exceptions.dart';
import 'package:flutter_riverpood_01/features/auth/data/api/auth_api.dart';
import 'package:flutter_riverpood_01/features/auth/data/models/user_model.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepository {
  final AuthApi _authApi;
  AuthRepository(this._authApi);
  FutureEither<UserModel> loginEmailPassword(
      {required String email, required String password}) async {
    try {
      final res =
          await _authApi.loginEmailPassword(email: email, password: password);
      final userModel = UserModel.fromJson(res['data']);
      return right(userModel);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);

      return left(errorMessage.toString());
    }
  }
}
