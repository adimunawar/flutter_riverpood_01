import 'package:flutter/material.dart';
import 'package:flutter_riverpood_01/features/home/view/home_page.dart';
import 'package:flutter_riverpood_01/route/app_route.dart';
import 'package:flutter_riverpood_01/route/routes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      initialRoute: Routes.home,
      routes: AppRoutes.routes,
    );
  }
}
