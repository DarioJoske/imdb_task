part of 'movies_bloc.dart';

enum MoviesStatus { initial, loading, loaded, error }

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    required MoviesStatus status,
    required List<MovieEntity>? movies,
    required int currentPage,
    required int totalPages,
    String? errorMessage,
  }) = _MoviesState;

  factory MoviesState.initial() => const MoviesState(
        status: MoviesStatus.initial,
        movies: [],
        errorMessage: '',
        currentPage: 1,
        totalPages: 1,
      );
}
