import 'package:flutter/material.dart';
import 'package:flutter_riverpood_01/features/home/widgets/home_button.dart';
import 'package:flutter_riverpood_01/route/routes.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
