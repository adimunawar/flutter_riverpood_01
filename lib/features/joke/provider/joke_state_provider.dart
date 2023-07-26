import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/features/joke/data/models/joke_state.dart';
import 'package:flutter_riverpood_01/features/joke/data/repository/joke_repository.dart';

class JokeDataNotifier extends StateNotifier<JokeState> {
  JokeDataNotifier(this.jokeRepository) : super(JokeState()) {
    print("dipanggil");
    getJoke();
  }
  JokeRepository jokeRepository;

  Future<void> getJoke() async {
    state = state.copyWith(isLoading: true);
    await jokeRepository.fetchJoke().then((data) {
      print("ini data $data");
      state = state.copyWith(joke: data, isLoading: false);
    });
  }
}
