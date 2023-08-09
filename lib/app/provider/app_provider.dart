import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/app/provider/app_state_provider.dart';
import 'package:flutter_riverpood_01/core/enum/app_state_enum.dart';

final appStateProvider2 = StateNotifierProvider<AppStateProvider, AppSate>(
    (ref) => AppStateProvider(ref));
