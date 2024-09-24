part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.getMovies({required int page}) = _GetMovies;
  const factory MoviesEvent.moviesPageChanged({required int page}) = _MoviesPageChanged;
}
