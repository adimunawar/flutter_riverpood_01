import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/app/provider/app_provider.dart';
import 'package:flutter_riverpood_01/app/view/loading_view.dart';
import 'package:flutter_riverpood_01/app/view/onboarding.dart';
import 'package:flutter_riverpood_01/core/enum/app_state_enum.dart';
import 'package:flutter_riverpood_01/features/auth/view/login_view.dart';
import 'package:flutter_riverpood_01/features/home/view/home_page.dart';
// import 'package:flutter_riverpood_01/features/auth/view/login_view.dart';
// import 'core/shared_provider/shared_provider.dart';
// import 'package:flutter_riverpood_01/features/home/view/home_page.dart';
// import 'package:flutter_riverpood_01/route/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Preference.load();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Consumer(builder: (context, ref, child) {
          var appState = ref.watch(appStateProvider2);
          if (appState == AppSate.isLoading) {
            return const LoadingWidget();
          } else if (appState == AppSate.onBoarding) {
            return const OnBoardingScreen();
          } else if (appState == AppSate.authenticated) {
            return const HomePage();
          } else {
            return const LoginView();
          }
        }));
  }
}
