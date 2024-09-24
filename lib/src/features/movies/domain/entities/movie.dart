import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String overview;
  final String releaseDate;
  final String posterPath;
  final String? backdropPath;
  final double voteAverage;
  final List<int> genreIds;

  const MovieEntity(
    this.backdropPath, {
    required this.genreIds,
    required this.id,
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.posterPath,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        overview,
        releaseDate,
        posterPath,
        backdropPath,
        voteAverage,
        genreIds,
      ];
}
