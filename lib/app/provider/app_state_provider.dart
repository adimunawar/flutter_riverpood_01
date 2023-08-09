import 'package:flutter_riverpood_01/core/enum/app_state_enum.dart';
import 'package:flutter_riverpood_01/core/shared_preferences/prefrences.dart';
import 'package:flutter_riverpood_01/core/shared_provider/shared_provider.dart';
import 'package:riverpod/riverpod.dart';

class AppStateProvider extends StateNotifier<AppSate> {
  final Ref ref;
  AppStateProvider(this.ref) : super(AppSate.isLoading) {
    initApp();
  }

  void initApp() async {
    await Preference.load();
    await Future.delayed(const Duration(milliseconds: 5500), () {
      bool isOnboarding = ref.read(sharedPrefHelperProvider).isOnboarding;
      if (!isOnboarding) {
        state = AppSate.onBoarding;
      } else {
        String? token = ref.read(sharedPrefHelperProvider).authToken;
        if (token != null) {
          state = AppSate.authenticated;
        } else {
          state = AppSate.unAutenticated;
        }
      }
    });
  }
}
