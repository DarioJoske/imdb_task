part of 'favourites_bloc.dart';

enum FavouritesStatus { initial, loading, loaded, error }

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState({
    required FavouritesStatus status,
    required List<MovieEntity> movies,
    String? errorMessage,
  }) = _FavouritesState;

  factory FavouritesState.initial() =>
      const FavouritesState(status: FavouritesStatus.initial, movies: [], errorMessage: null);
}
