import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/features/auth/provider/auth_provider.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userDataProvider.notifier).state;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User provile"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hallo Selamatan Datang \n ${user!.name}",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
