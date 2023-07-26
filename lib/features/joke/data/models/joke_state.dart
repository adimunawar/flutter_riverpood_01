import 'package:flutter_riverpood_01/features/joke/data/models/joke_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_state.freezed.dart';

@freezed
class JokeState with _$JokeState {
  factory JokeState({
    @Default(JokeModel()) JokeModel joke,
    @Default(true) bool isLoading,
  }) = _JokeState;
}
