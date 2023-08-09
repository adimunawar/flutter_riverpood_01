import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/core/shared_provider/shared_provider.dart';
import 'package:flutter_riverpood_01/features/auth/view/login_view.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcom gaes"),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    ref.read(sharedPrefHelperProvider).saveOnBoarding(true);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => const LoginView()));
                  },
                  child: const Text("Get Started"))
            ],
          ),
        ),
      ),
    );
  }
}
