import '../../domain/entities/movie.dart';

class MovieModel extends MovieEntity {
  const MovieModel(
    super.backdropPath, {
    required super.id,
    required super.title,
    required super.overview,
    required super.releaseDate,
    required super.posterPath,
    required super.voteAverage,
    required super.genreIds,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      json['backdrop_path'],
      id: json['id'],
      genreIds: List<int>.from(json['genre_ids']),
      title: json['title'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      posterPath: json['poster_path'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }

  static List<MovieModel> fromJsonList(List<dynamic> json) {
    return json.map((e) => MovieModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  static List<Map<String, dynamic>> toJsonList(List<MovieModel> movies) {
    return movies.map((e) => e.toJson()).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'release_date': releaseDate,
      'poster_path': posterPath,
      'backdrop_path': backdropPath,
      'vote_average': voteAverage,
      'genre_ids': genreIds,
    };
  }
}
