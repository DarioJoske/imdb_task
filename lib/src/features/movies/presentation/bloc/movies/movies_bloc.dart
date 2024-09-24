import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/movie.dart';
import '../../../domain/usecases/get_movies.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc(this._getMovies) : super(MoviesState.initial()) {
    on<_GetMovies>(_onGetMovies);
    on<_MoviesPageChanged>(_onMoviesPageChanged);

    add(const _GetMovies(page: 1));
  }

  final GetMovies _getMovies;

  Future<void> _onGetMovies(_GetMovies event, Emitter<MoviesState> emit) async {
    final movies = await _getMovies(GetMoviesParams(event.page));

    movies.fold(
      (error) => emit(state.copyWith(status: MoviesStatus.error, errorMessage: error.message)),
      (movies) => emit(state.copyWith(
          status: MoviesStatus.loaded,
          movies: movies.movies,
          currentPage: movies.currentPage,
          totalPages: movies.totalPages)),
    );
  }

  Future<void> _onMoviesPageChanged(_MoviesPageChanged event, Emitter<MoviesState> emit) async {
    add(_GetMovies(page: event.page));
  }
}
