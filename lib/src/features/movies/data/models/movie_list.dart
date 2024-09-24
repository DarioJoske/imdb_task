import '../../domain/entities/movie_list.dart';
import 'movie.dart';

class MovieListModel extends MovieListEntity {
  const MovieListModel({
    required super.movies,
    required super.totalPages,
    required super.currentPage,
  });

  factory MovieListModel.fromJson(Map<String, dynamic> json) {
    return MovieListModel(
      movies: MovieModel.fromJsonList(json['results']),
      currentPage: json['page'],
      totalPages: json['total_pages'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'results': MovieModel.toJsonList(movies as List<MovieModel>),
      'page': currentPage,
      'total_pages': totalPages,
    };
  }
}
