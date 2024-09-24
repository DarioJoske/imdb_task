// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'movie.dart';

class MovieListEntity extends Equatable {
  final List<MovieEntity> movies;
  final int currentPage;
  final int totalPages;

  const MovieListEntity({
    required this.movies,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  List<Object?> get props => [movies, currentPage, totalPages];
}
