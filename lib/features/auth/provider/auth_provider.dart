import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/core/shared_provider/shared_provider.dart';
import 'package:flutter_riverpood_01/core/utils/snack_bar.dart';
import 'package:flutter_riverpood_01/features/auth/data/api/auth_api.dart';
import 'package:flutter_riverpood_01/features/auth/data/models/user_model.dart';
import 'package:flutter_riverpood_01/features/auth/data/repository/auth_repository.dart';
import 'package:flutter_riverpood_01/features/auth/view/testing.dart';

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(dioClientProvider));
});
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.read(authApiProvider));
});

class AuthDataNotifier extends StateNotifier<AsyncValue<void>> {
  AuthDataNotifier(super.state);
}

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController(
      authRepository: ref.watch(authRepositoryProvider), ref: ref);
});
final userDataProvider = StateProvider<UserModel?>((ref) {
  return UserModel();
});

final appStateProvider = StateProvider<bool>((ref) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.appState();
});

class AuthController extends StateNotifier<bool> {
  final AuthRepository _authRepository;
  final Ref _ref;
  AuthController({
    required Ref ref,
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        _ref = ref,
        super(false);

  void loginEmailPassword({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final res = await _authRepository.loginEmailPassword(
        email: email, password: password);
    state = false;
    res.fold((l) {
      showSnackBar(context, l);
    }, (r) {
      _ref.read(userDataProvider.notifier).state = r;
      _ref.read(sharedPrefHelperProvider).saveAuthToken(r.api_token ?? '');
      showSnackBar(context, "Login Success");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyWidget()));
    });
  }

  //testing app state,

  bool appState() {
    bool result = false;
    final token = _ref.read(sharedPrefHelperProvider).authToken;
    if (token != null) {
      result = true;
    } else {
      result = false;
    }
    return result;
  }
}
