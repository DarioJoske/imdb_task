import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../movies/domain/entities/movie.dart';
import '../../domain/usecases/add_favourite.dart';
import '../../domain/usecases/get_favourites.dart';
import '../../domain/usecases/remove_favourite.dart';

part 'favourites_bloc.freezed.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc(this._addFavourite, this._getFavourites, this._removeFavourite) : super(FavouritesState.initial()) {
    on<_LoadFavourites>(_onLoadFavourites);
    on<_AddFavourite>(_onAddFavourite);
    on<_RemoveFavourite>(_onRemoveFavourite);
    add(const FavouritesEvent.loadFavourites());
  }

  final AddFavourite _addFavourite;
  final GetFavourites _getFavourites;
  final RemoveFavourite _removeFavourite;

  Future<void> _onLoadFavourites(_LoadFavourites event, Emitter<FavouritesState> emit) async {
    emit(state.copyWith(status: FavouritesStatus.loading));

    final movies = await _getFavourites();

    movies.fold(
      (error) => emit(state.copyWith(status: FavouritesStatus.error, errorMessage: error.message)),
      (movies) => emit(state.copyWith(status: FavouritesStatus.loaded, movies: movies)),
    );
  }

  Future<void> _onAddFavourite(_AddFavourite event, Emitter<FavouritesState> emit) async {
    final movies = await _addFavourite(AddFavouriteParams(movie: event.movie));

    movies.fold(
      (error) => emit(state.copyWith(status: FavouritesStatus.error, errorMessage: error.message)),
      (movies) => emit(state.copyWith(
        status: FavouritesStatus.loaded,
        movies: movies,
      )),
    );
  }

  Future<void> _onRemoveFavourite(_RemoveFavourite event, Emitter<FavouritesState> emit) async {
    final movies = await _removeFavourite(RemoveFavouriteParams(event.movieId));

    movies.fold(
      (error) => emit(state.copyWith(status: FavouritesStatus.error, errorMessage: error.message)),
      (movies) => emit(state.copyWith(
        status: FavouritesStatus.loaded,
        movies: movies,
      )),
    );
  }
}
