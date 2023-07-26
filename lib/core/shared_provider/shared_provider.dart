import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/core/network/dio_client.dart';
import 'package:flutter_riverpood_01/core/shared_preferences/helper.dart';
import 'package:flutter_riverpood_01/core/shared_preferences/prefrences.dart';

final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});

final preferencesProvider = Provider<Preference>((ref) {
  return Preference();
});

final sharedPrefHelperProvider = Provider<SharedPreferenceHelper>((ref) {
  return SharedPreferenceHelper(ref.read(preferencesProvider));
});
