import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpood_01/features/auth/view/login_view.dart';
import 'package:flutter_riverpood_01/features/video_recorder/view/video_recorder_view.dart';
// import 'package:flutter_riverpood_01/features/home/view/home_page.dart';
// import 'package:flutter_riverpood_01/route/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
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
      home: const VideoRecorderView(),
      // initialRoute: Routes.home,
      // routes: AppRoutes.routes,
    );
  }
}
