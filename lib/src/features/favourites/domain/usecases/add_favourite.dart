import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../movies/domain/entities/movie.dart';
import '../repositories/favourites_repository.dart';

class AddFavourite extends UsecaseWithParams<List<MovieEntity>, AddFavouriteParams> {
  final FavouritesRepository _repository;

  AddFavourite(this._repository);

  @override
  ResultFuture<List<MovieEntity>> call(AddFavouriteParams params) {
    return _repository.addFavourite(movie: params.movie);
  }
}

class AddFavouriteParams {
  final MovieEntity movie;

  AddFavouriteParams({required this.movie});
}
