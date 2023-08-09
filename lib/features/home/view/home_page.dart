import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/core/shared_provider/shared_provider.dart';
import 'package:flutter_riverpood_01/features/auth/view/login_view.dart';
import 'package:flutter_riverpood_01/features/home/widgets/home_button.dart';
import 'package:flutter_riverpood_01/route/routes.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(sharedPrefHelperProvider).clear();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (ctx) => const LoginView()));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeButton(
                title: 'jokes',
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.joke);
                }),
            const Gap(20),
            HomeButton(
                title: 'products',
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.product);
                }),
          ],
        ),
      ),
    );
  }
}
