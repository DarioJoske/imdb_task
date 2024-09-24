part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.loadFavourites() = _LoadFavourites;
  const factory FavouritesEvent.addFavourite({required MovieEntity movie}) = _AddFavourite;
  const factory FavouritesEvent.removeFavourite({required int movieId}) = _RemoveFavourite;
}
