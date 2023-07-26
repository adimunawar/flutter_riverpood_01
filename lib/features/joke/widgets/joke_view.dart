import 'package:flutter/material.dart';
import 'package:flutter_riverpood_01/features/joke/data/models/joke_mode.dart';
// import 'package:flutter_riverpood_01/features/joke/data/models/joke_mode.dart';

class JokeView extends StatelessWidget {
  final JokeModel joke;
  const JokeView({Key? key, required this.joke}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          joke.joke ?? '',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, height: 1.5),
        ),
      ),
    );
  }
}
