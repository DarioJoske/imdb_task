import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/genre.dart';
import '../../../domain/usecases/get_genres.dart';

part 'genres_bloc.freezed.dart';
part 'genres_event.dart';
part 'genres_state.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  GenresBloc(this._getGenres) : super(GenresState.initial()) {
    on<_GetGenres>(_onGetGenres);
    add(const _GetGenres());
  }

  final GetGenres _getGenres;

  Future<void> _onGetGenres(_GetGenres event, Emitter<GenresState> emit) async {
    emit(state.copyWith(status: GenresStatus.loading));

    final genres = await _getGenres();

    genres.fold(
      (error) => emit(state.copyWith(status: GenresStatus.error, errorMessage: error.message)),
      (genres) => emit(state.copyWith(status: GenresStatus.loaded, genres: genres)),
    );
  }
}
