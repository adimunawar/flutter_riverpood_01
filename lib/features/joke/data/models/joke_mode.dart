class JokeModel {
  final String joke;
  final String id;

  JokeModel({
    required this.joke,
    required this.id,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) {
    return JokeModel(joke: json['joke'], id: json['id']);
  }
}
