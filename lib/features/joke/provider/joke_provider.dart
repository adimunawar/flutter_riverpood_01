import 'package:flutter_riverpood_01/core/shared_provider/shared_provider.dart';
import 'package:flutter_riverpood_01/features/joke/data/api/joke_api.dart';
import 'package:flutter_riverpood_01/features/joke/data/models/joke_state.dart';
import 'package:flutter_riverpood_01/features/joke/data/repository/joke_repository.dart';
import 'package:flutter_riverpood_01/features/joke/provider/joke_state_provider.dart';
import 'package:riverpod/riverpod.dart';

final jokeApiProvider = Provider<JokeApi>((ref) {
  return JokeApi(ref.read(dioClientProvider));
});

final jokeRepositoryProvider = Provider<JokeRepository>((ref) {
  return JokeRepository(ref.read(jokeApiProvider));
});

final jokeDataProvider =
    StateNotifierProvider.autoDispose<JokeDataNotifier, JokeState>((ref) {
  return JokeDataNotifier(ref.read(jokeRepositoryProvider));
});
