import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../movies/domain/entities/movie.dart';
import '../repositories/favourites_repository.dart';

class RemoveFavourite extends UsecaseWithParams<List<MovieEntity>, RemoveFavouriteParams> {
  final FavouritesRepository _repository;

  RemoveFavourite(this._repository);

  @override
  ResultFuture<List<MovieEntity>> call(RemoveFavouriteParams params) {
    return _repository.removeFavourite(movieId: params.movieId);
  }
}

class RemoveFavouriteParams {
  final int movieId;

  RemoveFavouriteParams(this.movieId);
}
