import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/features/joke/provider/joke_provider.dart';
import 'package:flutter_riverpood_01/features/joke/widgets/joke_view.dart';
import 'package:flutter_riverpood_01/features/joke/widgets/refresh_joke.dart';

class JokePage extends ConsumerWidget {
  const JokePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joke = ref.watch(jokeDataProvider).joke;
    final isLoading = ref.watch(jokeDataProvider).isLoading;
    return Scaffold(
      floatingActionButton: const RefreshJoke(),
      appBar: AppBar(
        title: const Text('Jokes'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : JokeView(
              joke: joke,
            ),
    );
  }
}
