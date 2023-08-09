import 'dart:async';
import 'package:flutter_riverpood_01/core/shared_preferences/prefrences.dart';

class SharedPreferenceHelper {
  final Preference _sharedPreference;

  const SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<void> saveAuthToken(String authToken) async {
    await _sharedPreference.setString(PrefKeys.authToken, authToken);
  }

  String? get authToken {
    return _sharedPreference.getString(PrefKeys.authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(PrefKeys.authToken);
  }

  Future<void> saveOnBoarding(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isOnboarding, value);
  }

  bool get isOnboarding {
    return _sharedPreference.getBool(PrefKeys.isOnboarding) ?? false;
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }
}

mixin PrefKeys {
  static const String isOnboarding = "isLoggedIn";
  static const String authToken = "authToken";
}
